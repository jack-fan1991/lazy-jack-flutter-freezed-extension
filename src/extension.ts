import * as vscode from 'vscode'

import * as codeAction from './vscode_code_action/code_action';
import { registerEzAction } from './vscode_code_action/ez_code_action';
import { checkGitExtensionInYamlIfDart } from './utils/src/language_utils/dart/pubspec/analyze_dart_git_dependency';
import { registerJsonToFreezed } from './helper/dart/json_to_freezed/json_to_freezed';
import { SidebarManager } from './utils/src/vscode_feature/sidebar/sidebar_manger';
import { log } from 'console';
let sidebarManger = new SidebarManager()
export class APP {
  public static yaml: any|undefined = undefined;
}

export async function activate(context: vscode.ExtensionContext) {
  console.log('your extension "lazy-jack-flutter-freezed-extension" is now active!')
  //  updateGitSubModule(context)
  checkGitExtensionInYamlIfDart(true).then((yaml) => {
    APP.yaml = yaml
    log(APP.yaml)
  })
  registerJsonToFreezed(context)

  codeAction.register(context)
  registerEzAction(context)

}


export function deactivate() { }

