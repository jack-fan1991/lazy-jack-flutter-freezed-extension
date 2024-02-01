import * as vscode from 'vscode';
import { StringConvertFixer } from './dart/ez_code_action/string_convert_fixer';
import { ClassQuickFix } from './dart/ez_code_action/class_quick_fix_action';
import { DartCurserDetector } from './dart/ez_code_action/cursor_detector';
// 設定常數，代表指令的名稱
const DART_MODE = { language: "dart", scheme: "file" };
const quickFixCodeAction = [vscode.CodeActionKind.Refactor];

// 啟動擴充套件
export function registerEzAction(context: vscode.ExtensionContext) {
    let providers: EzCodeActionProviderInterface[] = []
    providers.push(new StringConvertFixer())
    providers.push(new ClassQuickFix())
    providers.push(new DartCurserDetector())
    for (let p of providers) {
        // 註冊命令回調
        p.setOnActionCommandCallback(context)
        context.subscriptions.push(
            vscode.languages.registerCodeActionsProvider(
                p.getLangrageType(),
                p,
               ));
    }
}



export interface EzCodeActionProviderInterface extends vscode.CodeActionProvider {
    setOnActionCommandCallback(context: vscode.ExtensionContext): void
    getLangrageType(): vscode.DocumentSelector

}