
import * as vscode from 'vscode';
import { FileListenerBase } from './base_file_listener';
import { DartAutoImportFileListener } from './dart_auto_import_listener';

const commonStartFileListener = "common.startFileListener"
const commonStopFileListener = "common.stopFileListener"



export function registerFileListener(context: vscode.ExtensionContext) {
    context.subscriptions.push(vscode.commands.registerCommand(commonStartFileListener, (fileListener: FileListenerBase) => {
        fileListener.start(context)
    }
    )
    );
    context.subscriptions.push(vscode.commands.registerCommand(commonStopFileListener, (fileListener: FileListenerBase) => {
        fileListener.stop(context)
    }
    )
    );
    
    startFileListener(new FileListenerManger())
    startFileListener(new DartAutoImportFileListener())
}

export function startFileListener(fileListener: FileListenerBase) {
    vscode.commands.executeCommand(commonStartFileListener, fileListener)
    
}

export function stopFileListener(fileListener: FileListenerBase) {
    vscode.commands.executeCommand(commonStopFileListener, fileListener)
}

export class FileListenerManger extends FileListenerBase {
    constructor() {
        super();
    }
    onDidChangeActiveTextEditor(): vscode.Disposable | undefined {
        return vscode.window.onDidChangeActiveTextEditor(editor => {
            // if ( editor?.document.uri.path.endsWith('.arb')) {
            //     startFileListener(arbFileListener)
            // }
            // if ( editor?.document.uri.path.endsWith('.graphql')) {
            //     shownGraphqlConvertMessage( editor.document)
            // }
          
        })
    }
    onDidCloseTextDocument(): vscode.Disposable | undefined {
        return vscode.workspace.onDidCloseTextDocument(doc => {
            if ( doc.uri.path.endsWith('.arb')) {
                // stopFileListener (arbFileListener)
            }
          
        })
    }

}
