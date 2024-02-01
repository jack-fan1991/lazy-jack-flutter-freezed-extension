import * as vscode from 'vscode';
import { CodeActionProviderInterface } from '../code_action';

// 提供對應診斷問題的代碼操作。



export class DiagnosticsErrorCodeHandler implements vscode.CodeActionProvider {
    providers: CodeActionProviderInterface<any>[] | undefined
    public static readonly providedCodeActionKinds = [
        vscode.CodeActionKind.Refactor
    ];
    constructor(providers: CodeActionProviderInterface<any>[]) {
        this.providers = providers
    }
    /**
     * 為每個具有匹配 "code" 的診斷條目創建代碼操作命令
     * @param document 代碼所在的文檔
     * @param range 代碼選中的範圍
     * @param context 代碼操作上下文
     * @param token 執行代碼操作的令牌
     * 依照發出的 diagnostic.code 轉發成codeAction
     */
    provideCodeActions(document: vscode.TextDocument, range: vscode.Range | vscode.Selection, context: vscode.CodeActionContext, token: vscode.CancellationToken): vscode.CodeAction[] {
        let fixAction: vscode.CodeAction[] = [];
        context.diagnostics
            .forEach(diagnostic =>
                this.providers?.forEach((provider) => {
                    let action = provider.handleError(diagnostic, document, range)
                    if (action!=null) {
                        fixAction.push(action)
                    }
                }));
        return fixAction
    }

}
