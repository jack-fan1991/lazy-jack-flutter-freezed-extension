import * as vscode from 'vscode';
import { EzCodeActionProviderInterface } from '../../code_action';
import { OpenCloseFinder, SmallerOpenCloseFinder } from '../../../utils/src/regex/open_close_finder';
import { getActivateEditor, getActivateEditorFileName, getCursorLineText } from '../../../utils/src/vscode_utils/editor_utils';
import { logInfo } from '../../../utils/src/logger/logger';
import { paramToRequireGenerator } from '../../../helper/dart/to_require_params';
import path = require('path');
import { getActivateText, insertToActivateEditor, reFormat } from '../../../utils/src/vscode_utils/activate_editor_utils';
import { insertPartLine } from '../../../helper/dart/part_utils';

// let counter = new OpenCloseFinder()

export class DartCurserDetector implements EzCodeActionProviderInterface {

    public static readonly command_to_require = 'command.param.to.require';

    getLangrageType() { return 'dart' }

    // 編輯時對單行檢測
    public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
        let cursorLineText = getCursorLineText()
        if (cursorLineText == undefined) return undefined
        // let action = convertParamToRequireAction(document, range, cursorLineText)
        autoSave(document,cursorLineText)
        // if (action != undefined) {
        //     return [action]
        // }

    }


    setOnActionCommandCallback(context: vscode.ExtensionContext) {
        // 注册 Quick Fix 命令
        // context.subscriptions.push(vscode.commands.registerCommand(DartCurserDetector.command_to_require, async (range: vscode.Range) => {
        //     paramToRequireGenerator(range)
        // }));
    }







}

function autoImport() {
    let text = getActivateText()
    if (text.includes("StatelessWidget") || text.includes('StatefulWidget')) {
        if (text.includes("import 'package:flutter/material.dart';")) return
        if (text.includes("import 'package:flutter/widgets.dart';")) return
        if (text.includes("import 'package:flutter/widgets.dart';")) return
        if (text.includes("import 'package:flutter/cupertino.dart';")) return
        if (text.includes("part of")) return
        insertToActivateEditor("import 'package:flutter/material.dart';\n")

    }
}



// function convertParamToRequireAction(document: vscode.TextDocument, range: vscode.Range, cursorLineText: string): vscode.CodeAction | undefined {
//     if (!cursorLineText.includes('(')) return undefined
//     if (cursorLineText.includes('{')) return undefined
//     let constructorParamRange = new SmallerOpenCloseFinder().findRange(document, range.start.line)
//     if (constructorParamRange == undefined) return undefined
//     return createToRequireFixAction(constructorParamRange)
// }

// function createToRequireFixAction(range: vscode.Range): vscode.CodeAction {
//     let title = 'Convert to required'
//     const fix = new vscode.CodeAction(title, vscode.CodeActionKind.QuickFix);
//     fix.command = { command: DartCurserDetector.command_to_require, title: title, arguments: [range] };
//     fix.isPreferred = true;
//     return fix;
// }


function autoSave(document: vscode.TextDocument,cursorLineText: string) {
    let text = document.getText()
    if (cursorLineText.includes('@freezed')) {
        document.save()
    }
}

