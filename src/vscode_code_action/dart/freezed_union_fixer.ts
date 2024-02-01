import path = require('path');
import * as vscode from 'vscode';
import { CodeActionProviderInterface } from '../code_action';
import { StatusCode } from '../error_code';
import { getActivateText, getActivateTextEditor, reFormat } from '../../utils/src/vscode_utils/activate_editor_utils';
import { findClassRegex, findFreezedClassRegex } from '../../utils/src/regex/regex_utils';
import { FlutterOpenCloseFinder } from '../../utils/src/regex/open_close_finder';

const flutterOpenCloseFinder = new FlutterOpenCloseFinder();

export class FreezedUnionFixer implements CodeActionProviderInterface<string> {

    public static readonly command = 'FreezedUnionFixer.command';
    public static readonly commandAddFromJson = 'FreezedUnionFixer.commandAddFromJson';

    getCommand() { return FreezedUnionFixer.command }
    getProvidedCodeActionKinds() { return [vscode.CodeActionKind.Refactor]; }
    getErrorCode() { return StatusCode.MissingDartPart }
    getLangrageType() { return 'dart' }




    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        // const text = document.getText();
        const editor = getActivateTextEditor();
        const text = getActivateText();
        let startLine = range.start.line
        let line = editor.document.lineAt(startLine).text;
        let lines = text.split('\n');
        let actions: vscode.CodeAction[] = [];
        let match = line.match(findFreezedClassRegex) ?? [];
        let classNameMatch = line.match(findClassRegex) ?? []
        let classRange = flutterOpenCloseFinder.findRange(document, range.start.line)
     
        if (match.length > 0) {
            actions.push(this.createAddUnitStateAction(document, range,classNameMatch[1]));
            if (classNameMatch.length > 0) {
                let className = classNameMatch[1]
                let factoryLine = `factory ${className}.fromJson`
                if (!editor.document.getText(classRange).includes(factoryLine)) {
                    actions.push(this.createAddFromJsonFixAction(document, range));
                }
            }
        } else {
            let tryCount = 10;
            let tryLine = startLine
            while (tryCount-- > 0) {
                tryLine--
                let preLine = editor.document.lineAt(tryLine).text;
                let classNameMatch = preLine.match(findClassRegex) ?? []
                if (classNameMatch.length > 0) {
                    let className = classNameMatch[1]
                    if (line.includes(`factory ${className}.`)) {
                        actions.push(this.createAddUnitStateAction(document, range,className));
                        break
                    }
                }
            }
        }
        return actions;

    }

    createAddUnitStateAction(document: vscode.TextDocument, range: vscode.Range, className:string): vscode.CodeAction {
        const title ="Add Union state"
        const fix = new vscode.CodeAction(title, vscode.CodeActionKind.Refactor);
        fix.command = { command: FreezedUnionFixer.command, title: title, arguments: [document, range,className] };
        fix.isPreferred = true;
        return fix;
    }

    createAddFromJsonFixAction(document: vscode.TextDocument, range: vscode.Range, ): vscode.CodeAction {
        const title ="Add from json method"
        const fix = new vscode.CodeAction(title, vscode.CodeActionKind.Refactor);
        fix.command = { command: FreezedUnionFixer.commandAddFromJson, title: title, arguments: [document, range] };
        fix.isPreferred = true;
        return fix;
    }
    //建立錯誤顯示文字hover
    createDiagnostic(range: vscode.Range, data: string): vscode.Diagnostic {
        const diagnostic = new vscode.Diagnostic(range, `${data}`, vscode.DiagnosticSeverity.Information);
        return diagnostic
    }
    // 註冊action 按下後的行為
    setOnActionCommandCallback(context: vscode.ExtensionContext) {
        // 注册 Quick Fix 命令
        context.subscriptions.push(vscode.commands.registerCommand(FreezedUnionFixer.command, async (document: vscode.TextDocument, range: vscode.Range,className:string) => {
            const editor = vscode.window.activeTextEditor;
            if (!editor)
                return;
            let linePosition = range.start.line
            // let line = document.lineAt(linePosition).text
            // let match = line.match(findClassRegex) ?? []
            // let className = match[1]
            let insertPosition = linePosition;
            while (true) {
                insertPosition++
                let line: string = document.lineAt(insertPosition).text
                if (line != "}") continue
                let preLine: string = document.lineAt(insertPosition - 1).text
                let preLine2: string = document.lineAt(insertPosition - 2).text

                if (preLine.includes('fromJson')) {
                    insertPosition--
                    break
                }
                if (preLine2.includes('fromJson')) {
                    insertPosition -= 2
                    break
                }
                if (line === "}") {
                    insertPosition--
                    break
                }

                break;

            }
            const snippet = new vscode.SnippetString(
                `\tconst factory ${className}` + ".${2:newState}() = _${2/(.*)/${1:/capitalize}/};" +
                "\t\n"
            );
            editor.insertSnippet(snippet, new vscode.Position(insertPosition, 0),);
            reFormat()
        }
        )
        )

        context.subscriptions.push(vscode.commands.registerCommand(FreezedUnionFixer.commandAddFromJson, async (document: vscode.TextDocument, range: vscode.Range) => {
            const editor = vscode.window.activeTextEditor;
            if (!editor)
                return;
            let linePosition = range.start.line
            let line = document.lineAt(linePosition).text
            let match = line.match(findClassRegex) ?? []
            let className = match[1]
            let insertPosition = linePosition;
            while (true) {
                insertPosition++
                let line: string = document.lineAt(insertPosition).text
                if (line != "}") continue
                // if (line.includes('._'))continue
                // if(line.replace(/\s+/g,'').includes(`constfactory${className}.`))continue
                break;
            }
            await editor.edit((editBuilder) => {
                editBuilder.insert(new vscode.Position(insertPosition, 0), `\tfactory ${className}.fromJson(Map<String, dynamic> json) => _$${className}FromJson(json);\n`);
            })
            // trigger refresh
            //  replaceText(getAbsFilePath(document.uri), document.getText(), document.getText())
            reFormat()
        }));
    }

    handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[] {
        return []
    }




    handleError(diagnostic: vscode.Diagnostic, document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction | undefined {
        return undefined
    }

}
