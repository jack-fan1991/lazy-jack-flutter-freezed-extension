import * as vscode from 'vscode';
import { CodeActionProviderInterface } from '../code_action';
import { activeEditorIsDart } from '../../utils/src/language_utils/language_utils';
import { getActivateText, insertToActivateEditor } from '../../utils/src/vscode_utils/activate_editor_utils';

/**
 * 訂閱文檔變更事件
 * @param context 上下文
 * @param diagnostics 問題診斷集合
 */
export function subscribeToDocumentChanges(context: vscode.ExtensionContext, diagnostics: vscode.DiagnosticCollection, providers: CodeActionProviderInterface<any>[]): void {
	if (vscode.window.activeTextEditor) {
		refreshDiagnostics(vscode.window.activeTextEditor.document, diagnostics, providers);
	}
	// 監聽文件開啟
	context.subscriptions.push(
		vscode.window.onDidChangeActiveTextEditor(editor => {
			if (editor) {
				refreshDiagnostics(editor.document, diagnostics, providers);
			}
		})
	)
	// 監聽文件變化
	context.subscriptions.push(
		vscode.workspace.onDidChangeTextDocument(e => refreshDiagnostics(e.document, diagnostics, providers))
	);
	// 監聽文件關閉移除文檔中的錯物事件
	context.subscriptions.push(
		vscode.workspace.onDidCloseTextDocument(doc => diagnostics.delete(doc.uri))
	);

}


/**
 * 分析文本文件並尋找問題。
 * 處理變化所要發送的事件。
 * @param document 要分析的文本文件
 * @param partFixDiagnostics 問題診斷集合
 */
export function refreshDiagnostics(document: vscode.TextDocument, partFixDiagnostics: vscode.DiagnosticCollection, providers: CodeActionProviderInterface<any>[]): void {
	let diagnostics: vscode.Diagnostic[] = [];
	// autoImport()
	// 進行所有檢查 
	for (let p of providers) {
		if(document.languageId!=p.getLangrageType())break 
		let newDiagnostics = p.handleAllFile(document).filter((x)=>!diagnostics.includes(x))
		diagnostics =[...diagnostics,...newDiagnostics]
	}
	partFixDiagnostics.set(document.uri, diagnostics);

}


