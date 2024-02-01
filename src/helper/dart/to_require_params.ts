




import * as vscode from 'vscode';
const command_dart_2_require_param = "command_dart_2_require_param"
let s;
let setter;
let arr: string[] = [];
export function runParamToRequireGenerator(){
    vscode.commands.executeCommand(command_dart_2_require_param)
}

export function registerToRequireParams(context: vscode.ExtensionContext) {
    context.subscriptions.push(vscode.commands.registerCommand(command_dart_2_require_param, async () => {
        paramToRequireGenerator()
    }));
}

export function paramToRequireGenerator() {
    const editor = vscode.window.activeTextEditor;
    if (!editor)
        return;
    const selection = editor.selection;
    let text = editor.document.getText(selection);
    if (text.length < 1) {
        vscode.window.showErrorMessage('No selected properties.');
        return;
    }
    let properties = text.split(',');
    let required: string[] = [];
    let unRequired: string[] = [];
    for (let p of properties) {
        required.push("required " + p)
    }
    let result = '{'
    for (let r of required) {
        result += r + ", "
    }
    result += "}"
    editor.document.getText(editor.selection)
    let e = new vscode.WorkspaceEdit()

    e.replace(editor.document.uri, editor.selection, result)
    vscode.workspace.applyEdit(e)
}









// import * as vscode from 'vscode';
// import { getActivateEditor } from '../../utils/src/vscode_utils/editor_utils';
// import { reFormat } from '../../utils/src/vscode_utils/activate_editor_utils';
// // const command_dart_2_require_param = "command_dart_2_require_param"
// // let s;
// // let setter;
// // let arr: string[] = [];
// // export function runParamToRequireGenerator(){
// //     vscode.commands.executeCommand(command_dart_2_require_param)
// // }

// // export function registerToRequireParams(context: vscode.ExtensionContext) {
// //     context.subscriptions.push(vscode.commands.registerCommand(command_dart_2_require_param, async () => {
// //         paramToRequireGenerator()
// //     }));
// // }

// export function paramToRequireGenerator(range: vscode.Range) {
//     const editor = getActivateEditor()
//     let text = editor.document.getText(range);
//     const regex = /\(([^)]+)\)/;  // 搜尋圓括號內的文字

//     const match = text.match(regex);
//     if (match) {
//         text = match[1].trim();
//     }
//     let properties = text.split(',');
//     let required: string[] = [];
//     let unRequired: string[] = [];
//     for (let p of properties) {
//         if (p.includes('this')) continue
//         if(p==='') continue
//         required.push("required " + p.trim())
//     }
//     let result = '\n({'
//     for (let r of required) {
//         result += r + ", "
//     }
//     result += "});\n"
//     editor.document.getText(editor.selection)
//     const regex2 = /(.*)\(/;  // 搜尋圓括號前的文字

//     const match2 = editor.document.getText(range).match(regex2);

//     if (match2) {
//         const character = match2[1].length;
//         let newRange = new vscode.Range(range.start.line, character, range.end.line, range.end.character)
//         let e = new vscode.WorkspaceEdit()
//         e.replace(editor.document.uri, newRange, result)
//         vscode.workspace.applyEdit(e)
        
//         reFormat()
//     }

// }
