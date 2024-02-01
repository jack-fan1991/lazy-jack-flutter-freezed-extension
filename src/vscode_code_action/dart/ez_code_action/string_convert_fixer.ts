import path = require('path');
import * as vscode from 'vscode';
import {  EzCodeActionProviderInterface } from '../../code_action';
import { toLowerCamelCase, toSnakeCase, toUpperCamelCase } from '../../../utils/src/regex/regex_utils';
import { replaceSelectionText } from '../../../utils/src/vscode_utils/editor_utils';

export class StringConvertFixer implements EzCodeActionProviderInterface {

    public static readonly commandToUpperCamel = 'StringConvertFixer.commandToUpperCamel';
    public static readonly commandLowerCamel = 'StringConvertFixer.commandLowerCamel';
    public static readonly commandToUpperCase = 'StringConvertFixer.commandToUpperCase';
    public static readonly commandToSnackCase = 'StringConvertFixer.commandToSnackCase';

    getLangrageType() { return { scheme: 'file' } }


    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return [];
        const selection = editor.selection;
        const text = editor.document.getText(selection);
        let isMultiLine = selection.start.line != selection.end.line
        if (text != ""&& !isMultiLine) {
            return [this.toUpperCamelAction(text,selection), this.toLowerCamelAction(text,selection), this.toUpperCase(text,selection), this.toSnackCase(text,selection)]
        }
        // let wordRange = getCursorWordRange()
        // if (wordRange != undefined) {
        //     let word = document.getText(wordRange)
        //     return [this.toLowerCamelAction(word,wordRange),this.toUpperCamelAction(word,wordRange),  this.toUpperCase(word,wordRange), this.toSnackCase(word,wordRange)]
        // }

    }

    toUpperCamelAction(text:string,range: vscode.Range): vscode.CodeAction {
        let data = `UpperCamel -> ${toUpperCamelCase(text)}`
        if(text.length>30){
            data = 'UpperCamel'
        }
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.QuickFix);
        fix.command = { command: StringConvertFixer.commandToUpperCamel, title: data, arguments: [range] };
        fix.isPreferred = true;
        return fix;
    }

    toLowerCamelAction(text:string,range: vscode.Range): vscode.CodeAction {
        let data = `LowerCamel -> ${toLowerCamelCase(text)}`
        if(text.length>30){
            data = 'LowerCamel'
        }
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.QuickFix);
        fix.command = { command: StringConvertFixer.commandLowerCamel, title: data, arguments: [range] };
        fix.isPreferred = true;
        return fix;
    }

    toUpperCase(text:string,range: vscode.Range): vscode.CodeAction {
        let data = `UpperCase -> ${text.toUpperCase()}`
        if(text.length>30){
            data = 'UpperCase'
        }
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.QuickFix);
        fix.command = { command: StringConvertFixer.commandToUpperCase, title: data, arguments: [range] };
        fix.isPreferred = true;
        return fix;
    }

    toSnackCase(text:string,range: vscode.Range): vscode.CodeAction {
        let data = `SnackCase -> ${toSnakeCase(text)}`
        if(text.length>30){
            data = 'SnackCase'
        }
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.QuickFix);
        fix.command = { command: StringConvertFixer.commandToSnackCase, title: data, arguments: [range] };
        fix.isPreferred = true;
        return fix;
    }


    // 註冊action 按下後的行為
    setOnActionCommandCallback(context: vscode.ExtensionContext) {
        context.subscriptions.push(vscode.commands.registerCommand(StringConvertFixer.commandToUpperCamel, async (range: vscode.Range) => {
            replaceSelectionText(range, toUpperCamelCase)
        }));
        context.subscriptions.push(vscode.commands.registerCommand(StringConvertFixer.commandLowerCamel, async (range: vscode.Range) => {
            replaceSelectionText(range, toLowerCamelCase)
        }));
        context.subscriptions.push(vscode.commands.registerCommand(StringConvertFixer.commandToUpperCase, async (range: vscode.Range) => {
            replaceSelectionText(range, (text) => text.toUpperCase())

        }));
        context.subscriptions.push(vscode.commands.registerCommand(StringConvertFixer.commandToSnackCase, async (range: vscode.Range) => {
            replaceSelectionText(range, toSnakeCase)

        }));
    }

}


