import path = require("path");
import { reFormat } from "../../utils/src/vscode_utils/activate_editor_utils";
import { getRelativePath, insertToEditor } from "../../utils/src/vscode_utils/editor_utils";
import * as vscode from 'vscode';

export function createPartOfLine(file1: string, file2: string, fileName: string | undefined = undefined): string {
    let relativePath = getRelativePath(file1, file2, fileName)
    if (relativePath.split('/')[0] != '..' || relativePath.split('/').length === 1) {
        relativePath = `./${relativePath}`;
    }
    return `part of '${relativePath}';`

}


export function findLastImportIdx(insertText: string, document: vscode.TextDocument) {
    let lines = document.getText().split(/\r?\n/)
    let linesCount = lines.length
    let lastPartLine = ''
    let insertIdx = 0
    let firstPartLineIdx = -1
    let hasPartImport = false
    for (let lIdx = 0; lIdx < linesCount; lIdx++) {
        let line = lines[lIdx]
        hasPartImport = hasPartImport || line.startsWith('part')
        if (line.startsWith('import') || line.startsWith('part')) {
            insertIdx++;
            continue
        }
        /// 往後找不應該出現以 part 或 import 開頭的行
        if (line === '') {
            let tryCount = 0
            for (let i = lIdx + 1; i < lines.length - lIdx; i++) {
                tryCount++;
                let nextLine = lines[i]
                if (firstPartLineIdx < 0 && nextLine.startsWith('part')) {
                    firstPartLineIdx = i
                }
                hasPartImport = hasPartImport || nextLine.startsWith('part')
                if (nextLine.startsWith('import') || nextLine.startsWith('part')) {
                    insertIdx = i;
                    break
                }
                if (tryCount > 10) {
                    lIdx = 99999;
                    break
                }
            }
        }
    }
    if (insertText.startsWith('import')) {
        insertIdx = hasPartImport ? firstPartLineIdx : insertIdx

    } else {
        insertIdx = insertIdx < 0 ? 0 : insertIdx
    }
    return insertIdx < 0 ? 0 : insertIdx
}


export async function insertPartLine(editor: vscode.TextEditor, partLine: string) {
    let text = editor.document.getText()
    if (!text.includes(partLine)) {
        let insertIdx = await findLastImportIdx(partLine, editor.document)
        await insertToEditor(editor, partLine + '\n', new vscode.Position(insertIdx, 0))
    }
    reFormat()
}


export type PartPair = {
    partLine: string,
    partOfLine: string
}


export function createPartLine(file1: string, file2: string): PartPair {
    let relativePath = getRelativePath(file1, file2, path.basename(file1))
    if (relativePath.split('/')[0] != '..' || relativePath.split('/').length === 1) {
        relativePath = `./${relativePath}`;
    }
    let partOfLine = `part of '${relativePath}';`
    let partRelativePath = getRelativePath(file2, file1, path.basename(file2))
    if (partRelativePath.split('/')[0] != '..' || partRelativePath.split('/').length === 1) {
        partRelativePath = `./${partRelativePath}`;
    }
    let partLine = `part '${partRelativePath}';`
    return { partLine, partOfLine }

}