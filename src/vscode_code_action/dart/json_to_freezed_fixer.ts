import path = require('path');
import * as vscode from 'vscode';
import { CodeActionProviderInterface } from '../code_action';
import { StatusCode } from '../error_code';
import { command_dart_json_to_freezed, freezedGenerator } from '../../helper/dart/json_to_freezed/json_to_freezed';


export class JsonToFreezedFixer implements CodeActionProviderInterface<string> {
    public static readonly command = 'JsonToFreezedFixer.command';
    public static partLineRegex = new RegExp(/^part.*[;'"]$/)
    getCommand() { return JsonToFreezedFixer.command }
    getProvidedCodeActionKinds() { return [vscode.CodeActionKind.Refactor]; }
    getErrorCode() { return StatusCode.Pass }
    getLangrageType() { return 'dart' }


    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return [];
        const selection = editor.selection;
        const text = editor.document.getText(selection);
        if (text === "") return [];
        try {
            let result = JSON.parse(text)
            console.log(`json: ${result}`);
            const quickFixPart = this.createAddUnitStateAction(document, range, "Convert to Freezed");
            // 將所有程式碼動作打包成陣列，並回傳
            return [quickFixPart];
        } catch (e) {
            return []
        }
    }

    createAddUnitStateAction(document: vscode.TextDocument, range: vscode.Range, data: string): vscode.CodeAction {
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.Refactor);
        fix.command = { command: JsonToFreezedFixer.command, title: data, arguments: [document, range]};
        fix.diagnostics = [this.createDiagnostic(range, data)];
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
        context.subscriptions.push(vscode.commands.registerCommand(JsonToFreezedFixer.command, async (document: vscode.TextDocument, range: vscode.Range) => {
            await vscode.commands.executeCommand(command_dart_json_to_freezed)
        }));
    }

    handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[] {
        return []
    }




    handleError(diagnostic: vscode.Diagnostic, document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction | undefined {
        return undefined
    }

}
