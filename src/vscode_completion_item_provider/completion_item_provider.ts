import * as vscode from 'vscode';

import { CompletionItemProvider, TextDocument, Position, CompletionItem, CompletionItemKind, CancellationToken } from 'vscode';
import { getActivateText } from '../utils/src/vscode_utils/activate_editor_utils';
import { getActivateEditorFileName, getCursorLineText } from '../utils/src/vscode_utils/editor_utils';
import { findClassRegex, toUpperCamelCase } from '../utils/src/regex/regex_utils';
import { activeEditorIsDart } from '../utils/src/language_utils/language_utils';

const DART_MODE = { language: "dart", scheme: "file" };
export class MyCompletionItemProvider implements CompletionItemProvider {
    provideCompletionItems(document: TextDocument, position: Position, token: CancellationToken): CompletionItem[] {
        const completionItems: CompletionItem[] = [];
        let text = getActivateText()
        let match = text.match(findClassRegex) ?? []
        let lineText = getCursorLineText();
        if (lineText?.startsWith('class ')||lineText?.startsWith('abstract class ')) {
            if (match.length == 0) {
                let fileName = getActivateEditorFileName()
                let className = toUpperCamelCase(fileName)
                completionItems.push(new CompletionItem(className, CompletionItemKind.Class));
            } else {
                let match = lineText.match(findClassRegex) ?? []
                let className = match[1]
                if (!lineText.includes('extends')){
                    if(activeEditorIsDart()){
                        completionItems.push(statelessItem(className));
                        completionItems.push(statefulWidgetItem(className))    
                    } 
                    completionItems.push(new CompletionItem('extends', CompletionItemKind.Class));
                } else if (!lineText.includes('State')){
                    if(activeEditorIsDart()){
                        completionItems.push(statelessItem(className,true));
                        completionItems.push(statefulWidgetItem(className,true))    
                    } 

                }            
            }
        }
        return completionItems;
    }
}

function statefulWidgetItem(className: string ,fromWidget:boolean=false): CompletionItem {
    // 添加自动补全项
    const nameItem = new CompletionItem('StatefulWidget', CompletionItemKind.Class);
    let prefix = fromWidget?"":"extends "
    nameItem.insertText = new vscode.SnippetString(
        `${prefix}StatefulWidget {\n` +
        `  const ${className}({super.key});\n\n` +
        `  @override\n` +
        `  State<${className}> createState() => _${className}State();\n` +
        `}\n\n` +
        `class _${className}State extends State<${className}> {\n` +
        `  @override\n` +
        `  Widget build(BuildContext context) {\n` +
        `    return Container();\n` +
        `  }\n` +
        `}`
    );
    return nameItem;
}


function statelessItem(className: string,fromWidget:boolean=false): CompletionItem {
    // 添加自动补全项
    let prefix = fromWidget?"":"extends "
    const nameItem = new CompletionItem('StatelessWidget', CompletionItemKind.Class);
    nameItem.insertText = new vscode.SnippetString(
        `${prefix}StatelessWidget {\n` +
        `  const ${className}({super.key});\n\n` +
        '  @override\n' +
        '  Widget build(BuildContext context) {\n' +
        '    return Container();\n' +
        '  }\n' +
        '}'
    );
    return nameItem;
}


export function registerCompletionItemProvider(context: vscode.ExtensionContext) {
    const myCompletionItemProvider = new MyCompletionItemProvider();

    context.subscriptions.push(
        vscode.languages.registerCompletionItemProvider(
            DART_MODE,
            myCompletionItemProvider,
            ' ',
        )
    );
}

export interface SnippetSetting {
    prefix: string;
    body: string[];
    description: string;
}

const completionItem = (snippet: SnippetSetting) => {
    const item = new vscode.CompletionItem(snippet.prefix);
    item.insertText = new vscode.SnippetString(snippet.body.join('\n'));
    item.documentation = snippet.description;
    return item;
}