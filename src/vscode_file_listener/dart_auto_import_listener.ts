import * as vscode from 'vscode';
import { FileListenerBase } from './base_file_listener';
import { isFlutterProject } from '../utils/src/language_utils/dart/pubspec/pubspec_utils';
import { insertPartLine } from '../helper/dart/part_utils';
import path = require('path');
import { getActivateEditor, getActivateEditorFileName } from '../utils/src/vscode_utils/editor_utils';
import { getActivateText, reFormat } from '../utils/src/vscode_utils/activate_editor_utils';
export class DartAutoImportFileListener extends FileListenerBase {
    constructor() {
        super();
    }
    onDidChangeTextDocument(): vscode.Disposable | undefined {
        return vscode.workspace.onDidSaveTextDocument((document) => {
            // Arb save auto run flutter pub get
            if (!document.fileName.endsWith('.dart')) return
            let activateFile=   getActivateEditorFileName(true)
            if (!document.fileName.endsWith( activateFile) )return
            let text = document.getText()
            if(text.includes('ignore freezed'))return
            if (!isFlutterProject()) return
            if (attentionOnFreezed(text)) {
                autoImportFreezed(text)
            }
            if (attentionOnWidget(text)) {
                insertPartLine(getActivateEditor(), "import 'package:flutter/material.dart';\n")
            }
        })
    }
}



function attentionOnWidget(text: string): boolean {
    let attention = text.includes('StatelessWidget') || text.includes('StatefulWidget')
    if (text.includes("import 'package:flutter/material.dart';")) return false
    if (text.includes("import 'package:flutter/widgets.dart';")) return false
    if (text.includes("import 'package:flutter/widgets.dart';")) return false
    if (text.includes("import 'package:flutter/cupertino.dart';")) return false
    if (text.includes("part of")) return false
    return attention
}



function isFreezed(text: string): boolean {
    for (let key of ['@freezed', '@unfreezed', 'Freezed(']) {
        if (text.includes(key)) {
            return true
        }
    }
    return false
}

function attentionOnFreezed(text: string) {
    let importLibName = `import 'package:freezed_annotation/freezed_annotation.dart';`
    return isFreezed(text) && (!text.includes(importLibName) || !text.includes(getPartFreezedLine()) || !text.includes(getPartGLine()))
}


function autoImportFreezed(cursorLineText: string) {
    const importFreezedLine = `import 'package:freezed_annotation/freezed_annotation.dart';`
    const partGLine = getPartGLine()
    let allImport = []
    const partFreezedLine = getPartFreezedLine()
    let text = getActivateText()

    if (cursorLineText.includes('@freezed')) {
        if (!text.includes(importFreezedLine)) {
            allImport.push(importFreezedLine)
        }
        if (!text.includes(partGLine)&& text.includes(".fromJson")) {
            allImport.push(partGLine)
        }
        if (!text.includes(partFreezedLine)) {
            allImport.push(partFreezedLine)
        }
    }
    else if (cursorLineText.includes('@JsonSerializable(')) {
        if (!text.includes(`import 'package:json_annotation/json_annotation.dart';`)) {
            allImport.push(`import 'package:json_annotation/json_annotation.dart';`)
        }
    }
    insertPartLine(getActivateEditor(), allImport.join('\n'))
    reFormat()

}

function getPartGLine() {
    let baseFileName = getActivateEditorFileName()
    return `part '${baseFileName}.g.dart';`
}


function getPartFreezedLine() {
    let baseFileName = getActivateEditorFileName()
    return `part '${baseFileName}.freezed.dart';`
}
