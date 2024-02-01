import * as vscode from 'vscode';
import { EzCodeActionProviderInterface } from '../../code_action';
import * as fs from 'fs';
import path = require('path');
import { BiggerOpenCloseFinder, FlutterOpenCloseFinder } from '../../../utils/src/regex/open_close_finder';
import { getActivateEditor, getActivateFileAsUri, getCursorLineText, getFolderPath, openEditor, replaceText } from '../../../utils/src/vscode_utils/editor_utils';
import { getActivateText, insertToActivateEditor, reFormat } from '../../../utils/src/vscode_utils/activate_editor_utils';
import { findClassRegex, toSnakeCase } from '../../../utils/src/regex/regex_utils';
import { logError, logInfo } from '../../../utils/src/logger/logger';
import { PartPair, createPartLine, insertPartLine } from '../../../helper/dart/part_utils';
import { APP } from '../../../extension';
import { find } from 'lodash';
import { sleep } from '../../../utils/src/vscode_utils/vscode_utils';

const flutterOpenCloseFinder = new FlutterOpenCloseFinder();



export class ClassQuickFix implements EzCodeActionProviderInterface {

    getLangrageType(): vscode.DocumentSelector {
        return { scheme: 'file' }
    }

    public static readonly commandExtractClass = 'ExtractClassFixer.extract.class';
    public static readonly commandAddHiveAdapter = 'ExtractClassFixer.hive.adapter';

    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        let cursorLineText = getCursorLineText()
        if (cursorLineText == undefined) return undefined
        let classRange = flutterOpenCloseFinder.findRange(document, range.start.line)
        let actions: vscode.CodeAction[] = []
        let upLineText = document.lineAt(range.start.line - 1).text
        let nextLineText = document.lineAt(range.start.line + 1).text
        if (classRange != undefined) {
            if (upLineText.includes("@freezed") && APP.yaml['dependencies']['hive'] != undefined) {
                if (!nextLineText.includes("@HiveType")) {
                    actions.push(this.convertFreezedToHiveAction(getActivateEditor()!, classRange))
                }
            } else {
                actions.push(this.createExtractClassAction(getActivateEditor()!, classRange))
            }
            return actions
        }

    }

    convertFreezedToHiveAction(editor: vscode.TextEditor, range: vscode.Range): vscode.CodeAction {
        let data = "Add Hive Adapter"
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.Refactor);
        fix.command = { command: ClassQuickFix.commandAddHiveAdapter, title: data, arguments: [editor, range] };
        fix.isPreferred = true;
        return fix;
    }

    createExtractClassAction(editor: vscode.TextEditor, range: vscode.Range): vscode.CodeAction {
        let data = "Extract Class to file"
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.RefactorExtract);
        fix.command = { command: ClassQuickFix.commandExtractClass, title: data, arguments: [editor, range] };
        fix.isPreferred = true;
        return fix;
    }

    // 註冊action 按下後的行為
    setOnActionCommandCallback(context: vscode.ExtensionContext) {
        context.subscriptions.push(vscode.commands.registerCommand(ClassQuickFix.commandExtractClass, async (editor: vscode.TextEditor, range: vscode.Range) => {
            let text = getActivateText(range)
            let match = text.match(findClassRegex)

            createFileInPicker(editor, undefined, match == null ? undefined : match[1], range)
            editor.document.save()

        }))


        context.subscriptions.push(vscode.commands.registerCommand(ClassQuickFix.commandAddHiveAdapter, async (editor: vscode.TextEditor, range: vscode.Range) => {
            let srcText = getActivateText(range)
            let lines = srcText.split('\n').filter((line) => !line.includes("_()"))
            let text = lines.join('\n')
            let match = text.match(findClassRegex)
            let className = match![1]
            logInfo("Search Hive typeId...")
            let lasId = await searchMaxHiveIdxForText()
            let hiveAdapter = `@HiveType(typeId: ${lasId + 1}, adapterName: '${className}Adapter')`
            searchAndInsertHiveInit(`${className}Adapter`)
            let result = ''
            let start = 0
            let isParam = false
            let hiveField = 0
            let preChar = ''
            for (let i = 0; i < text.length; i++) {
                let char = text[i]
                if (i > 0) {
                    preChar = text[i - 1]
                }
                if (char === '{' && start == 0) {
                    result += ` ${char}\n`
                    result += ` \t${hiveAdapter}\n`
                    start++
                }
                else if (char === '{' || char === ',') {
                    result += char
                    isParam = true
                    if (char === ',') {
                        result += '\n'
                    }

                }
                else if (isParam && char != '}') {
                    if (!result.includes('fromJson') && char.trim() != '') {
                        result += `@HiveField(${hiveField})  `
                        result += char
                        hiveField++
                        isParam = false
                    }
                    else {
                        result += char

                    }

                } else if (char === '}') {
                    isParam = false
                    result += char
                }
                else {
                    result += char
                }




            }
            let line = text.split('\n')

            replaceText(editor.document.uri.fsPath, srcText, result)

            editor.document.save()

        }))
    }

}



async function createFileInPicker(editor: vscode.TextEditor, uriPath: string | undefined, fileName: string | undefined, classRange: vscode.Range) {
    let activateDocument = editor.document
    let classData = activateDocument.getText(classRange)
    let defaultUri;
    if (uriPath != null) {
        defaultUri = vscode.Uri.file(uriPath)
    }
    else if (uriPath == null && fileName == null) {
        defaultUri = getActivateFileAsUri()
    } else if (fileName != null) {
        let folder = getFolderPath(vscode.window.activeTextEditor!.document)
        let file: string = fileNameFormat(fileName ?? "temp")
        file += `.${getFileType()}`
        defaultUri = vscode.Uri.file(path.join(folder, file))
    }
    let options: vscode.SaveDialogOptions = {
        defaultUri: defaultUri,
        filters: {

            'All Files': ['*']
        }
    };

    const needPartOfUri = await vscode.window.showSaveDialog(options);
    if (needPartOfUri) {
        let partPair: PartPair = createPartLine(activateDocument.uri.fsPath, needPartOfUri.fsPath)
        // let newPath = needPartOfUri.fsPath.replace(getWorkspaceFolderPath() ?? "", '')

        let newClassData = `${partPair.partOfLine}\n\n${classData}`
        fs.writeFile(needPartOfUri.fsPath, newClassData, async (err) => {
            if (err) {
                vscode.window.showErrorMessage(`Failed to create file: ${err.message}`);
            }
            await insertPartLine(editor, partPair.partLine)
            openEditor(needPartOfUri.fsPath)
            replaceText(activateDocument.uri.fsPath, classData, '')
        });
    }
}




export function fileNameFormat(fileName: string): string {
    let language = vscode.window.activeTextEditor?.document.languageId
    let fileType = 'txt'
    switch (language) {
        case `dart`:
            fileName = toSnakeCase(fileName)
        default:
            break;
    }
    return fileName
}




export function getFileType(): string {
    let language = vscode.window.activeTextEditor?.document.languageId
    let fileType = 'txt'
    switch (language) {
        case 'yaml':
            fileType = 'yaml'
            break;
        case 'json':
            fileType = 'json'
            break;
        case 'xml':
            fileType = 'xml'
            break;
        case 'html':
            fileType = 'html'
            break;
        case 'css':
            fileType = 'css'
            break;
        case 'javascript':
            fileType = 'js'
            break;
        case 'typescript':
            fileType = 'ts'
            break;
        case 'markdown':
            fileType = 'md'
            break;
        case 'python':
            fileType = 'py'
            break;
        case 'java':
            fileType = 'java'
            break;
        case 'c':
            fileType = 'c'
            break;
        case `dart`:
            fileType = 'dart'
        default:
            break;
    }
    return fileType
}


async function searchMaxHiveIdxForText(): Promise<number> {
    const files = await vscode.workspace.findFiles('**/lib/**/*.dart');
    let maxId: number = 0;

    for (const file of files) {
        const document = await vscode.workspace.openTextDocument(file);
        const fileContent = document.getText();

        if (fileContent.includes('@HiveType(typeId:')) {
            const idMatch = fileContent.match(/@HiveType\(typeId:\s*(\d+)/g);
            if (idMatch == null || idMatch?.length == 0) {
                continue;
            }
            for (let s of idMatch) {
                let id = s.match(/@HiveType\(typeId:\s*(\d+)/)![1]
                const typeId = parseInt(id);
                if (typeId > maxId) {
                    maxId = typeId;
                }
            }


        }
    }
    return maxId
}


async function searchAndInsertHiveInit(insertAdapter: string): Promise<void> {
    const files = await vscode.workspace.findFiles('**/lib/**/*.dart');
    let maxId: number = 0;
    logInfo("Search registerAdapter...")
    for (const file of files) {
        const document = await vscode.workspace.openTextDocument(file);
        const fileContent = document.getText();
        if (fileContent.includes('@HiveType(typeId:')) {
            const idMatch = fileContent.match(/@HiveType\(typeId: (\d+)/);
            let classMatch = fileContent.match(findClassRegex)
            if (!classMatch) continue
            let className = classMatch![1]
            for (const file of files) {
                const document = await vscode.workspace.openTextDocument(file);
                const fileContent = document.getText();
                if (fileContent.includes(`.registerAdapter(${className}Adapter())`)) {
                    let editor = await openEditor(file.fsPath)
                    let index = -1
                    let lines = fileContent.split('\n')
                    for (let line of lines) {
                        if (line.includes('.registerAdapter(')) {
                            index = lines.indexOf(line)
                        }
                    }
                    let objName = fileContent.match(/(\w+)\.registerAdapter/)?.[1]
                    index++
                    let insertLine = `${objName}.registerAdapter(${insertAdapter}());`
                    await editor?.edit((editBuilder) => {
                        editBuilder.insert( new vscode.Position(index, 0), insertLine + '\n');
                    })
                    // put cursor to the end of the line
                    if (editor != null) {
                        editor.selection = new vscode.Selection(new vscode.Position(index, 0), new vscode.Position(index, insertLine.length))
                    }
                    reFormat()

                    return
                }
            }

        }
    }
    return
}