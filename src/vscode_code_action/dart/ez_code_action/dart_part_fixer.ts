// import path = require('path');
// import * as vscode from 'vscode';
// import * as fs from 'fs';
// import { EzCodeActionProviderInterface } from '../../ez_code_action';
// import { openEditor } from '../../../utils/common';
// import { reFormat } from '../../../utils/vscode_utils';
// import { removeFolderPath } from '../../../utils/file_utils';

// export class PartFixInfo {
//     targetAbsPath: string;
//     shortPath: string;
//     title: string;
//     msg: string;
//     importLine: string;
//     constructor(targetAbsPath: string, shortPath: string, title: string, msg: string, importLine: string) {
//         this.targetAbsPath = targetAbsPath;
//         this.shortPath = shortPath;
//         this.title = title
//         this.msg = msg;
//         this.importLine = importLine;

//     }
// }
// export class DartPartFixer implements EzCodeActionProviderInterface {

//     public static readonly command = 'DartPartFixer.command';
//     public static partLineRegex = new RegExp(/^part.*[;'"]$/)
//     getLangrageType() { return 'dart' }

//     createFixAction(document: vscode.TextDocument, range: vscode.Range, data: PartFixInfo): vscode.CodeAction {
//         const fix = new vscode.CodeAction(`${data.msg}`, vscode.CodeActionKind.Refactor);
//         fix.command = { command: DartPartFixer.command, title: data.title, arguments: [document,  data.targetAbsPath, data.importLine] };
//         fix.diagnostics = [this.createDiagnostic(range, data)];
//         fix.isPreferred = true;
//         return fix;
//     }
//     //建立錯誤顯示文字hover
//     createDiagnostic(range: vscode.Range, data: PartFixInfo): vscode.Diagnostic {
//         const diagnostic = new vscode.Diagnostic(range, `${data.shortPath} \n需要引入 ${data.importLine}`, vscode.DiagnosticSeverity.Error);
//         diagnostic.source = `\nlazy-jack \nFix import ${data.importLine} in ${data.shortPath};`;
//         return diagnostic
//     }
//     registerCommand(context: vscode.ExtensionContext) {
//         context.subscriptions.push(vscode.commands.registerCommand(DartPartFixer.command, async (document: vscode.TextDocument,  targetPath: string, importText: string) => {
//             let textEditor = await openEditor(targetPath, true)
//             if (textEditor) {
//                 let text = textEditor.document.getText()
//                 if(text.includes(importText))return
//                 if (importText.includes('part of')) {
//                     let text = textEditor.document.getText()
//                     let allImportNeedInsert = document.getText().match(/^import\s+['"][^'"]+['"];/gm)??[]
//                     let lastImportString =allImportNeedInsert[allImportNeedInsert.length-1]
//                     let lastImportLineIdx = document.getText().split('\n').indexOf(lastImportString)
//                     let replaceRange = new vscode.Range(new vscode.Position(0, 0), new vscode.Position(lastImportLineIdx, lastImportString.length))
//                     let allImportNeedMove = text.match(/^import\s+['"][^'"]+['"];/gm)??[]
//                     let needMove = allImportNeedMove.filter((string) => {return !document.getText().includes(string)} )
//                     let result =[...allImportNeedInsert,...needMove].join('\n')
//                     let insertIdx=0
//                     let lines = text.split(/\r?\n/)
//                     for (let l of lines) {
//                         if(l .includes('import')) continue
//                         if(l .includes('part') ) continue
//                         if(l==='') continue
//                         insertIdx = lines.indexOf(l)-1;
//                         break
//                     }
//                     await textEditor.edit((editBuilder) => {
//                         editBuilder.replace(new vscode.Range(new vscode.Position(0, 0), new vscode.Position(insertIdx, 0)), importText + '\n')
//                         // editBuilder.insert(new vscode.Position(importText.includes('part') ? lastImportLine : 0, 0), importText + '\n');
//                     })
//                     let moveToEditor = await openEditor(document.uri.path, true)
//                     if(moveToEditor){
//                         await moveToEditor.edit((editBuilder) => {
//                             editBuilder.replace(replaceRange, result)
//                         })
//                     }
//                     vscode.window.showInformationMessage(`Move all "import line" form [ ${removeFolderPath(textEditor.document)} ] to [ ${removeFolderPath(document)} ]`)
//                     if (textEditor.document.isDirty) {
//                         await textEditor.document.save()
//                     }
                    
//                 } else {
//                     let text = textEditor.document.getText()
//                     let lines = text.split(/\r?\n/)
//                     let insertIdx=0
//                     for (let l of lines) {
//                         if(l .includes('import')) continue
//                         if(l .includes('part') ) continue
//                         if(l==='') continue

//                         insertIdx = lines.indexOf(l)-1;
//                         break
//                     }
//                     await textEditor.edit((editBuilder) => {
//                         editBuilder.insert(new vscode.Position(importText.includes('part') ? insertIdx : 0, 0), importText + '\n');
//                     })
//                     if (textEditor.document.isDirty) {
//                         await textEditor.document.save()
//                     }
//                 }
//                 reFormat()
//             }
//         }));
//     }

//     // handleAllFile(document: vscode.TextDocument): vscode.Diagnostic[] {
//     //     let diagnostics: vscode.Diagnostic[] = []
//     //     let lines = document.getText().split(/\r?\n/)
//     //     for (let line of lines) {
//     //         if (DartPartFixer.partLineRegex.exec(line) != null) {
//     //             let range = new vscode.Range(new vscode.Position(lines.indexOf(line), 0), new vscode.Position(lines.indexOf(line), 0))
//     //             let partFixInfo = this.handleLine(document, range)
//     //             if (!partFixInfo) continue
//     //             let diagnostic = this.createDiagnostic(range, partFixInfo)
//     //             diagnostics.push(diagnostic)
//     //         }
//     //     }
//     //     return diagnostics
//     // }
//     handleLine(document: vscode.TextDocument, range: vscode.Range): PartFixInfo | undefined {
//         let partLine = document.lineAt(range.start.line).text;
//         if (partLine.includes('.g.') || partLine.includes('.freezed.')) return
//         let pathRegExp = new RegExp(/(^|\s)\.?\/?(\w+)/)
//         let partMatch = partLine.match(new RegExp(/'([^']+)'/))
//         let partOfMatch = partLine.match(new RegExp(/'([^']+)'/))
//         let isPartOf = partLine.replace(/\s/g, '').includes('partof');
//         let targetDart = ''
//         if (isPartOf && partOfMatch != null) {
//             // targetDart = partOfMatch[1].replace(/'/g,'')+'.dart'
//             targetDart = partOfMatch[1]

//         } else if (partMatch != null) {
//             // targetDart=partMatch[1].replace(/'/g,'')+'.dart'
//             targetDart = partMatch[1]
//         }

//         let currentDir = path.dirname(document.fileName);
//         let currentFileName = path.basename(document.fileName);
//         let targetAbsPath = path.resolve(currentDir, targetDart);
//         let targetDir = path.dirname(targetAbsPath);
//         let targetFileName = path.basename(targetAbsPath);
//         if (!fs.existsSync(targetAbsPath)) {
//             console.log(`!!!!!${targetAbsPath} NotFound!!!!!!`);
//             return;
//         }
//         const targetFileContent = fs.readFileSync(targetAbsPath, 'utf-8').replace(/\s/g, '');
//         let keyPoint = isPartOf ? 'part' : 'part of';
//         let targetImportPartOfName = "";
//         targetImportPartOfName = path.join(path.relative(targetDir, currentDir), currentFileName);
//         if (isPartOf && targetImportPartOfName.split('/')[0] != '..' || targetImportPartOfName.split('/').length === 1) {
//             targetImportPartOfName = `./${targetImportPartOfName}`;
//         }
//         let importLine = `${keyPoint} '${targetImportPartOfName}';`;
//         if (targetFileContent.includes(targetImportPartOfName.replace(/\s/g, '')) || targetFileContent.includes(importLine.replace(/\s/g, '').replace('./', ''))) {
//             console.log(`${importLine} already in ${targetAbsPath}`);
//             return;
//         }
//         let shortPath = targetAbsPath.replace(currentDir, '.');
//         let msg = `Add line "${importLine}" to "${shortPath}"`;
//         let title = `Fix import in ${shortPath}`
//         return new PartFixInfo(targetAbsPath, shortPath, title, msg, importLine);
//     }

//     // 檢查是否為part 開頭 '"; 結尾
//     isPartLine(document: vscode.TextDocument, range: vscode.Range) {
//         const start = range.start;
//         const line = document.lineAt(start.line);
//         return DartPartFixer.partLineRegex.exec(line.text) != null;
//     }
//     // 編輯時對單行檢測
//     public provideCodeActions(document: vscode.TextDocument, range: vscode.Range): vscode.CodeAction[] | undefined {
//         if (!this.isPartLine(document, range)) {
//             return;
//         }
//         let partFixInfo = this.handleLine(document, range);
//         if (partFixInfo == null)
//             return;
//         const quickFixPart = this.createFixAction(document, range, partFixInfo);
//         // 將所有程式碼動作打包成陣列，並回傳
//         return [quickFixPart];
//     }

// }
