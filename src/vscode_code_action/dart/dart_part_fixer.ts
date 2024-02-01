import path = require('path');
import * as vscode from 'vscode';
import * as fs from 'fs';
import { CodeActionProviderInterface } from '../code_action';
import { StatusCode } from '../error_code';
import { getRelativePath, insertToEditor, openEditor, removeFolderPath } from '../../utils/src/vscode_utils/editor_utils';
import { reFormat } from '../../utils/src/vscode_utils/activate_editor_utils';
import { insertPartLine } from '../../helper/dart/part_utils';

export class PartFixInfo {
    targetAbsPath: string;
    shortPath: string;
    title: string;
    msg: string;
    importLine: string;
    constructor(targetAbsPath: string, shortPath: string, title: string, msg: string, importLine: string) {
        this.targetAbsPath = targetAbsPath;
        this.shortPath = shortPath;
        this.title = title
        this.msg = msg;
        this.importLine = importLine;

    }
}
export class DartPartFixer implements CodeActionProviderInterface<PartFixInfo> {

    public static readonly command = 'DartPartFixer.command';
    public static partLineRegex = new RegExp(/^part.*[;'"]$/)
    getCommand() { return DartPartFixer.command }
    getProvidedCodeActionKinds() { return [vscode.CodeActionKind.Refactor]; }
    getErrorCode() { return StatusCode.MissingDartPart }
    getLangrageType() { return 'dart' }

    createAddUnitStateAction(document: vscode.TextDocument, range: vscode.Range, data: PartFixInfo): vscode.CodeAction {
        const fix = new vscode.CodeAction(`${data.msg}`, vscode.CodeActionKind.Refactor);
        fix.command = { command: DartPartFixer.command, title: data.title, arguments: [document, data.targetAbsPath, data.importLine] };
        fix.diagnostics = [this.createDiagnostic(range, data)];
        fix.isPreferred = true;
        return fix;
    }
    //建立錯誤顯示文字hover
    createDiagnostic(range: vscode.Range, data: PartFixInfo): vscode.Diagnostic {
        const diagnostic = new vscode.Diagnostic(range, `${data.shortPath} \n需要引入 ${data.importLine}`, vscode.DiagnosticSeverity.Error);
        diagnostic.source = `\nlazy-jack \nFix import ${data.importLine} in ${data.shortPath};`;
        diagnostic.code = this.getErrorCode()
        return diagnostic
    }
    // 註冊action 按下後的行為
    setOnActionCommandCallback(context: vscode.ExtensionContext) {
        // 注册 Quick Fix 命令
        context.subscriptions.push(vscode.commands.registerCommand(DartPartFixer.command, async (document: vscode.TextDocument | undefined, targetPath: string, importText: string) => {
            // quick fix 點選的行
            // let lineNumber: number = range.start.line
            // let partLine = document.lineAt(lineNumber).text;
            targetPath = targetPath.replace(/\\/g, '/');
            let textEditor = await openEditor(targetPath, true)

            if (textEditor) {
                if (importText.includes('part of')) {
                    let partOfFileText = textEditor.document.getText()
                    if (!partOfFileText.includes(importText)) {
                        let partFileText = document!.getText()
                        let partFileImport = partFileText.match(/^import\s+['"][^'"]+['"];/gm) ?? []
                        let lastImportString = partFileImport.pop() ?? ''
                        let lastPartFileImportLineIdx = partFileText.split('\n').indexOf(lastImportString)
                        let moveFromPartOfFile = partOfFileText.match(/^import\s+['"][^'"]+['"];/gm) ?? []
                        let needMove = moveFromPartOfFile.filter((string) => { return !partFileText.includes(string) })
                        /// 把現有的加上新的從第一行取代到最後一個import
                        let result = [...partFileImport, ...needMove].join('\n')
                        let replaceRange = new vscode.Range(new vscode.Position(0, 0), new vscode.Position(lastPartFileImportLineIdx, lastImportString.length))
                        let insertIdx = 0
                        let lines = partOfFileText.split(/\r?\n/)
                        for (let l of lines) {
                            if (l.includes('import')) continue
                            if (l.includes('part')) continue
                            if (l === '') continue
                            insertIdx = lines.indexOf(l) - 1;
                            break
                        }
                        await textEditor.edit((editBuilder) => {
                            editBuilder.replace(new vscode.Range(new vscode.Position(0, 0), new vscode.Position(insertIdx < 0 ? 0 : insertIdx, 0)), importText + '\n')
                            // editBuilder.insert(new vscode.Position(importText.includes('part') ? lastImportLine : 0, 0), importText + '\n');
                        })
                        let moveToEditor = await openEditor(document!.uri.path, true)
                        if (moveToEditor) {
                            await moveToEditor.edit((editBuilder) => {
                                editBuilder.replace(replaceRange, result)
                            })
                        }
                        vscode.window.showInformationMessage(`Move all "import line" form [ ${removeFolderPath(textEditor.document)} ] to [ ${removeFolderPath(document!)} ]`)
                        if (textEditor.document.isDirty) {
                            await textEditor.document.save()
                        }
                    }
                } else {
                    let text = textEditor.document.getText()
                    if (!text.includes(importText)) {
                        await insertPartLine(textEditor,importText)
                        if (textEditor.document.isDirty) {
                            await textEditor.document.save()
                        }
                    }
                }
                if (textEditor.document.isDirty) {
                    await textEditor.document.save()
                }
                if (document?.isDirty) {
                    await textEditor.document.save()
                }
                reFormat()


            }
        }));
    }

    handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[] {
        let diagnostics: vscode.Diagnostic[] = []
        let lines = document.getText().split(/\r?\n/)
        for (let line of lines) {
            if (DartPartFixer.partLineRegex.exec(line) != null) {
                let range = new vscode.Range(new vscode.Position(lines.indexOf(line), 0), new vscode.Position(lines.indexOf(line), 0))
                let partFixInfo = this.handleLine(document, range)
                if (!partFixInfo) continue
                let diagnostic = this.createDiagnostic(range, partFixInfo)
                diagnostics.push(diagnostic)
            }
        }
        return diagnostics
    }
    handleLine(document: vscode.TextDocument, range: vscode.Range): PartFixInfo | undefined {
        let partLine = document.lineAt(range.start.line).text;
        if (partLine.includes('.g.') || partLine.includes('.freezed.')) return
        let pathRegExp = new RegExp(/(^|\s)\.?\/?(\w+)/)
        let partMatch = partLine.match(new RegExp(/'([^']+)'/))
        let partOfMatch = partLine.match(new RegExp(/'([^']+)'/))
        let isPartOf = partLine.replace(/\s/g, '').includes('partof');
        let targetDart = ''
        if (isPartOf && partOfMatch != null) {
            // targetDart = partOfMatch[1].replace(/'/g,'')+'.dart'
            targetDart = partOfMatch[1]

        } else if (partMatch != null) {
            // targetDart=partMatch[1].replace(/'/g,'')+'.dart'
            targetDart = partMatch[1]
        }

        let currentDir = path.dirname(document.fileName);
        let currentFileName = path.basename(document.fileName);
        let targetAbsPath = path.resolve(currentDir, targetDart);
        let targetDir = path.dirname(targetAbsPath);
        let targetFileName = path.basename(targetAbsPath);
        if (!fs.existsSync(targetAbsPath)) {
            console.log(`!!!!!${targetAbsPath} NotFound!!!!!!`);
            return;
        }
        const targetFileContent = fs.readFileSync(targetAbsPath, 'utf-8').replace(/\s/g, '');
        let keyPoint = isPartOf ? 'part' : 'part of';
        let targetImportPartOfName = "";
        targetImportPartOfName = path.join(path.relative(targetDir, currentDir), currentFileName);
        if (isPartOf && targetImportPartOfName.split('/')[0] != '..' || targetImportPartOfName.split('/').length === 1) {
            targetImportPartOfName = `./${targetImportPartOfName}`;
        }
        let importLine = `${keyPoint} '${targetImportPartOfName}';`;
        if (targetFileContent.includes(targetImportPartOfName.replace(/\s/g, '')) || targetFileContent.includes(importLine.replace(/\s/g, '').replace('./', ''))) {
            console.log(`${importLine} already in ${targetAbsPath}`);
            return;
        }
        let shortPath = targetAbsPath.replace(currentDir, '.');
        let msg = `Add line "${importLine}" to "${shortPath}"`;
        let title = `Fix import in ${shortPath}`
        return new PartFixInfo(targetAbsPath, shortPath, title, msg, importLine);
    }

    // 檢查是否為part 開頭 '"; 結尾
    isPartLine(document: vscode.TextDocument, range: vscode.Range) {
        const start = range.start;
        const line = document.lineAt(start.line);
        return DartPartFixer.partLineRegex.exec(line.text) != null;
    }
    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        if (!this.isPartLine(document, range)) {
            return;
        }
        let partFixInfo = this.handleLine(document, range);
        if (partFixInfo == null)
            return;
        const quickFixPart = this.createAddUnitStateAction(document, range, partFixInfo);
        // 將所有程式碼動作打包成陣列，並回傳
        return [quickFixPart];
    }

    handleError(diagnostic: vscode.Diagnostic, document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction | undefined {
        if (diagnostic.code != this.getErrorCode()) return
        let partFixInfo = this.handleLine(document, range);
        if (partFixInfo == null) return
        return this.createAddUnitStateAction(document, range, partFixInfo)
    }

}

