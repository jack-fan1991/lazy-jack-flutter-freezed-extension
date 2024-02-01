import * as vscode from 'vscode';
import { DartPartFixer } from './dart/dart_part_fixer';
import { DiagnosticsErrorCodeHandler } from './dart/diagnostics_error_code_handler';
import { subscribeToDocumentChanges } from './dart/diagnostics';
import { StatusCode } from './error_code';
import { FreezedFixer } from './dart/freezed_import_fixer';
import { JsonToFreezedFixer } from './dart/json_to_freezed_fixer';
import { FreezedUnionFixer } from './dart/freezed_union_fixer';

// import { StringConvertFixer } from './dart/string_convert_fixer';
// 設定常數，代表指令的名稱
const DART_MODE = { language: "dart", scheme: "file" };
const quickFixCodeAction = [vscode.CodeActionKind.Refactor];
export const diagnostics = vscode.languages.createDiagnosticCollection("DartPartFixer");

/// 監聽文件變化時會重新刷新的action
// 啟動擴充套件
export function register(context: vscode.ExtensionContext) {
    let providers: CodeActionProviderInterface<any>[] = []
    providers.push(new FreezedUnionFixer())
    providers.push(new DartPartFixer())
    // providers.push(new FreezedFixer())
    providers.push(new JsonToFreezedFixer())
    // providers.push(new ParamToRequiredFixer())
    // providers.push(new RefactorTextStyleFixer())

        
    for (let p of providers) {
        // 註冊命令回調
        p.setOnActionCommandCallback(context)
        // 註冊支援程式碼動作的提供者，並指定支援的程式語言為 dart
        context.subscriptions.push(
            vscode.languages.registerCodeActionsProvider(
                p.getLangrageType(),
                p,
                {
                    providedCodeActionKinds: p.getProvidedCodeActionKinds()
                }));
    }
    // 建立語言診斷集合
    context.subscriptions.push(diagnostics);
    // 訂閱文件變更事件，以重新計算語言診斷
    subscribeToDocumentChanges(context, diagnostics, providers);

    // 註冊支援程式碼動作的提供者，並指定支援的程式語言為 dart
    context.subscriptions.push(
        vscode.languages.registerCodeActionsProvider(DART_MODE, new DiagnosticsErrorCodeHandler(providers), {
            providedCodeActionKinds: DiagnosticsErrorCodeHandler.providedCodeActionKinds
        })
    );


}

export interface CodeActionProviderInterface<T> extends vscode.CodeActionProvider {
    createAddUnitStateAction(document: vscode.TextDocument, range: vscode.Range, data: T): vscode.CodeAction
    createDiagnostic(range: vscode.Range, data: T): vscode.Diagnostic;
    setOnActionCommandCallback(context: vscode.ExtensionContext): void
    handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[]
    handleError(diagnostic: vscode.Diagnostic, document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction | undefined
    getCommand(): String
    getProvidedCodeActionKinds(): vscode.CodeActionKind[]
    getErrorCode(): StatusCode
    getLangrageType(): vscode.DocumentSelector

}


export interface EzCodeActionProviderInterface extends vscode.CodeActionProvider {
    setOnActionCommandCallback(context: vscode.ExtensionContext): void
    getLangrageType(): vscode.DocumentSelector

}