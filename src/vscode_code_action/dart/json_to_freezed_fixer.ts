import path = require('path');
import * as vscode from 'vscode';
import { CodeActionProviderInterface } from '../code_action';
import { StatusCode } from '../error_code';
import { command_dart_json_to_freezed, freezedGenerator } from '../../helper/dart/json_to_freezed/json_to_freezed';
import { toUpperCamelCase } from '../../utils/src/regex/regex_utils';


export class JsonToFreezedFixer implements CodeActionProviderInterface<string> {
    createAddUnitStateAction(document: vscode.TextDocument, range: vscode.Range, data: string): vscode.CodeAction {
        throw new Error('Method not implemented.');
    }
    resolveCodeAction?(codeAction: vscode.CodeAction, token: vscode.CancellationToken): vscode.ProviderResult<vscode.CodeAction> {
        throw new Error('Method not implemented.');
    }
    public static readonly convertToFreezed = 'JsonToFreezedFixer.baseOnFileName';
    public static readonly innerClassFix = 'JsonToFreezedFixer.innerClass';
    public static partLineRegex = new RegExp(/^part.*[;'"]$/)
    getCommand() { return JsonToFreezedFixer.convertToFreezed }
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
            const quickFixPart = this.createCommonAction(JsonToFreezedFixer.convertToFreezed,document, range, "Json To Freezed (base on file name) ");
    
            
            const innerClassFixer = this.createCommonAction(JsonToFreezedFixer.innerClassFix,document, range, "Json to Freezed (inner class) ");
            // 將所有程式碼動作打包成陣列，並回傳
            return [quickFixPart,innerClassFixer];
            // 將所有程式碼動作打包成陣列，並回傳
            return [quickFixPart];
        } catch (e) {
            return []
        }
    }

    createCommonAction(command:string, document: vscode.TextDocument, range: vscode.Range, data: string): vscode.CodeAction {
        const fix = new vscode.CodeAction(data, vscode.CodeActionKind.Refactor);
        fix.command = { command: command, title: data, arguments: [document, range]};
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
        context.subscriptions.push(vscode.commands.registerCommand(JsonToFreezedFixer.convertToFreezed, async (document: vscode.TextDocument, range: vscode.Range) => {
            await vscode.commands.executeCommand(command_dart_json_to_freezed)
        }));
        
        context.subscriptions.push(vscode.commands.registerCommand(JsonToFreezedFixer.innerClassFix, async (document: vscode.TextDocument, range: vscode.Range) => {
            const editor = vscode.window.activeTextEditor;
            if (!editor) return [];
            const selection = editor.selection;
            const text = document.getText(selection).replace(/\s/g, '');
            let firstKey = ''
            let count = 0
            for(let s of text){
                if(s=="{"||s=="["){
                    count++
                }
                firstKey+=s
                if(count==2){
                    firstKey= firstKey.replace("{","").replace("[","").replace('"',"").replace(':',"")
                    break
                }
            }
        
            const className = await vscode.window.showInputBox({
                prompt: 'Generate class name :',
                value: toUpperCamelCase(firstKey.replace("{","").replace("[","").replace('"',"").replace(':',"")) 
            })
            if (className) {
                await vscode.commands.executeCommand(command_dart_json_to_freezed, className);
            } 
        }));
    }

    handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[] {
        return []
    }




    handleError(diagnostic: vscode.Diagnostic, document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction | undefined {
        return undefined
    }

}
