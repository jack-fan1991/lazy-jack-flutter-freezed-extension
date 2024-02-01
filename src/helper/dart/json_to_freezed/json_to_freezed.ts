import * as vscode from 'vscode';
import { CustomType, CustomTypeManger, JsonObjectManger } from './json_object_helper';
import { runTerminal } from '../../../utils/src/terminal_utils/terminal_utils';
import { getActivateEditorFileName, getSelectedText } from '../../../utils/src/vscode_utils/editor_utils';
import { getActivateText } from '../../../utils/src/vscode_utils/activate_editor_utils';
import { tryParseJson } from '../../../utils/src/json_utils/try_parse_json';
import { Icon_Warning, logError } from '../../../utils/src/logger/logger';
import { toUpperCamelCase } from '../../../utils/src/regex/regex_utils';

export const command_dart_json_to_freezed = "command_dart_json_to_freezed"

const firstImport = `import 'package:freezed_annotation/freezed_annotation.dart';`;

let jsonObjectManger = new JsonObjectManger()

export function registerJsonToFreezed(context: vscode.ExtensionContext) {
    context.subscriptions.push(vscode.commands.registerCommand(command_dart_json_to_freezed, async () => {
        await freezedGenerator()
        runTerminal('flutter pub run build_runner build --delete-conflicting-outputs', "build_runner")

    }));
}

function findOuterKeys(jsonString: string): string[] {
    const pattern = /"([^"]+)":/g;  // 正則表達式模式
    const matches = jsonString.matchAll(pattern);
    const outerKeys: string[] = [];

    for (const match of matches) {
        outerKeys.push(match[1]);
    }

    return outerKeys;
}

export async function freezedGenerator() {
    jsonObjectManger = new JsonObjectManger()
    const editor = vscode.window.activeTextEditor;
    if (!editor)
        return;
    let selectedText = getSelectedText()
    /// 用來當作response的class名稱
    const baseFileName = getActivateEditorFileName()
    const fileNameGPart = `part '${baseFileName}.g.dart';`;
    const fileNameFPart = `part '${baseFileName}.freezed.dart';`;
    let importLine: string[] = [];
    let text = getActivateText()

    let jsonObject = tryParseJson(selectedText);
    let className = toUpperCamelCase(baseFileName);
    if (getActivateText().includes(`class ${className}`)) {
        className = findOuterKeys(getSelectedText())[0];
        className = toUpperCamelCase(className);
    } else {
        for (let importText of [firstImport, fileNameGPart, fileNameFPart]) {
            if (!text.includes(importText)) {
                importLine.push(importText)
            }
        }
    }
    // 回傳最接近的[type,type,type]
    // type = string | number | boolean | object | array
    // 因為是第一層所以如果 object 則用 baseFileName 當作 class 名稱
    // 如果是 array 則需要知道是什麼類型的array parse 應該要回傳 [array 的 type]
    await parse(jsonObject, className)
    let finalResult = importLine.join('\n') + '\n\n' + jsonObjectManger.toFreezedTemplate(className);
    console.log(`===================`);
    console.log(`result: ${finalResult}`);
    // generateClassTemplate(jsonObject, className);
    // generateResponseData(className, jsonObject);
    let e = new vscode.WorkspaceEdit()
    e.replace(editor.document.uri, editor.selection, finalResult)
    vscode.workspace.applyEdit(e)


}


async function parse(jsonObject: any, parentKey: string = "", objInArray: boolean = false): Promise<string> {
    let baseFileName = getActivateEditorFileName()
    baseFileName = toUpperCamelCase(baseFileName);
    try {
        if (Array.isArray(jsonObject)) {
            let arrayObjType = await parseArray(jsonObject, parentKey)
            if (parentKey === baseFileName) {
                // no key Array
                let wrapperClassName = baseFileName + "Wrapper";
                wrapperClassName = await vscode.window.showInputBox({ placeHolder: `${Icon_Warning} Input class name for No key array`, value: wrapperClassName }).then((className) => {
                    let listType = ""
                    if (className) {
                        return className;
                    } else {
                        return wrapperClassName
                    }
                })
                let wrapper = new CustomType(arrayObjType, arrayObjType, true)
                console.log(`Add wrapper ${wrapper.toFreezedFieldFormat()}`)
                jsonObjectManger.classWrapper.set(wrapperClassName, wrapper)
            }
            return arrayObjType;
        } else if (typeof jsonObject === 'object' && jsonObject !== null) {
            return await parseObjectToFreezedFormat(jsonObject, parentKey);
        } else {
            return typeof jsonObject;
        }
    } catch (e) {
        logError(e)
        return "";
    }

}



async function parseObjectToFreezedFormat(obj: any, parentKey: string = ''): Promise<string> {
    for (const key in obj) {
        // console.log(`key: ${key}`)
        if (obj.hasOwnProperty(key)) {
            let child = obj[key]
            let childType = typeof child
            if (childType === 'object' && child !== null) {
                let customTypeManger: CustomTypeManger = jsonObjectManger.getCustomTypeManger(parentKey) ?? new CustomTypeManger();
                let customType: CustomType;
                if (Array.isArray(child)) {
                    customType = arrayPramsFmt(child, key, key)
                } else {
                    customType = getFiledToFreezedFormat(child, key, key)
                }

                // console.log(`freezedFieldFormat: ${customType.toFreezedFieldFormat()}`)
                customTypeManger.addCustomType(customType)
                jsonObjectManger.setCustomTypeManger(parentKey, customTypeManger)
                jsonObjectManger.printCache()
                await parse(child, key)
                // console.log(`freezedFieldFormat: ${freezedFieldFormat}`)
                // console.log(`freezedField: ${freezedFields}`)
                // let template = freezedClassTemplate(key, freezedFieldFormat)
                // classCollection.push(template)
            } else {
                // 單純的
                let customTypeManger: CustomTypeManger = jsonObjectManger.getCustomTypeManger(parentKey) ?? new CustomTypeManger();
                let customType: CustomType = getFiledToFreezedFormat(child, key)
                // console.log(`freezedFieldFormat: ${customType.toFreezedFieldFormat()}`)
                customTypeManger.addCustomType(customType)
                jsonObjectManger.setCustomTypeManger(parentKey, customTypeManger)
                jsonObjectManger.printCache()
            }
        }
    }
    return parentKey;
}

// 解析 JSON 陣列的類型，回傳包含每個元素的類型的字串陣列
async function parseArray(arr: any[], parentKey: string = ""): Promise<string> {
    let type: string[] = []
    for (const item of arr) {
        let t = await parse(item, parentKey, true)
        type.push(t)
    }
    return type[0]
}




export function getFiledToFreezedFormat(jsonObj: any, fieldName: string, customClass: string = ''): CustomType {
    const tsType = typeof jsonObj
    if (customClass !== '') {
        return new CustomType(customClass, fieldName)
    }
    if (jsonObj === null) {
        return new CustomType('dynamic', fieldName)
    }
    switch (tsType) {
        case 'string':
            return new CustomType('String', fieldName)
        case 'number':
            if (Number.isInteger(jsonObj)) {
                return new CustomType('int', fieldName)
            } else {
                return new CustomType('double', fieldName)
            }
        case 'boolean':
            return new CustomType('bool', fieldName)

        default:
            throw new Error(`Unknow type: ${tsType}`)
    }
}



function arrayPramsFmt(jsonObject: any | undefined, parentName: string, customType: string = ''): CustomType {
    let hasCustomName = customType !== ''
    let keys = Object.keys(jsonObject);
    let typeString = 'dynamic';


    let firstChild = jsonObject[keys[0]]
    let type = typeof firstChild
    switch (type) {
        case 'string':
            typeString = 'String';
            break;
        case 'number':
            if (Number.isInteger(firstChild)) {
                typeString = 'int';
            } else {
                typeString = 'double';
            }
            break;
        case 'boolean':
            typeString = 'bool';
            break;
        case 'object':
            if (customType !== '') {
                typeString = customType
            }
            break;
    }
    return new CustomType(typeString, parentName, true)
}