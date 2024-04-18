import * as vscode from 'vscode';

export interface FileListenerBaseInterface {
    start(context: vscode.ExtensionContext): void;
    stop(context: vscode.ExtensionContext): void;
    onDidSaveTextDocument(): vscode.Disposable | undefined;
    onDidChangeActiveTextEditor(): vscode.Disposable | undefined;
    onDidChangeTextDocument(): vscode.Disposable | undefined;
    onDidCloseTextDocument(): vscode.Disposable | undefined;
}

export class FileListenerBase implements FileListenerBaseInterface {
    
    constructor() {
        this.disposables.push(this.onDidSaveTextDocument());
        this.disposables.push(this.onDidChangeActiveTextEditor());
        this.disposables.push(this.onDidChangeTextDocument());
        this.disposables.push(this.onDidCloseTextDocument());
    }
    private disposables: (vscode.Disposable | undefined)[] = [];

    onDidSaveTextDocument(): vscode.Disposable | undefined {
        return vscode.workspace.onDidSaveTextDocument((document) => { })
    }
    onDidChangeActiveTextEditor(): vscode.Disposable | undefined {
        return vscode.window.onDidChangeActiveTextEditor((editor) => { })
    }
    onDidChangeTextDocument(): vscode.Disposable | undefined {
        return vscode.workspace.onDidChangeTextDocument((e) => { })
    }
    onDidCloseTextDocument(): vscode.Disposable | undefined {
        return vscode.workspace.onDidCloseTextDocument((doc) => { })
    }

     noneNullDisposables(): vscode.Disposable[] {
        return this.disposables.filter((disposable) => disposable !== undefined).map((disposable) => disposable as vscode.Disposable)
    }

    protected  pushIfNotSubscribed(context: vscode.ExtensionContext,disposable: vscode.Disposable ) {
        if(context.subscriptions.findIndex((e)=>e==disposable) != -1){
            return
        }
        context.subscriptions.push(disposable)
    }

    public start(context: vscode.ExtensionContext) {
        // logInfo(`pre ${context.subscriptions.length}`,false)
        this.noneNullDisposables().forEach((disposable) => this.pushIfNotSubscribed(context,disposable))
        // logInfo(`${context.subscriptions.filter((e)=>e==this.disposables[0])}`,false)
        // logInfo(`after ${context.subscriptions.length}`,false)
        
    }

    public stop(context: vscode.ExtensionContext) {
        // logInfo(`before stop ${context.subscriptions.length}`,false)
        // // this.noneNullDisposables().forEach((disposable) => disposable.dispose())
        // logInfo(`${context.subscriptions.filter((e)=>e==this.disposables[0])}`,false)
        // logInfo(`after stop ${context.subscriptions.length}`,false)
        // this.disposables = []
     
    }
}

