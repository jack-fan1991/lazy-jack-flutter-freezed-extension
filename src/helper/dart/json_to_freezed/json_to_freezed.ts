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
    context.subscriptions.push(vscode.commands.registerCommand(command_dart_json_to_freezed, async (className) => {
        await freezedGenerator(className)
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

export async function freezedGenerator(costumerClass: string | undefined = undefined) {
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

    let className = costumerClass
    if (costumerClass == undefined || '') {
        className = toUpperCamelCase(baseFileName);
        if (getActivateText().includes(`class ${className}`)) {
            className = findOuterKeys(getSelectedText())[0];
            className = toUpperCamelCase(className);
        } else {
            className = toUpperCamelCase(baseFileName);
            for (let importText of [firstImport, fileNameGPart, fileNameFPart]) {
                if (!text.includes(importText)) {
                    importLine.push(importText)
                }
            }
        }
    }
    // 回傳最接近的[type,type,type]
    // type = string | number | boolean | object | array
    // 因為是第一層所以如果 object 則用 baseFileName 當作 class 名稱
    // 如果是 array 則需要知道是什麼類型的array parse 應該要回傳 [array 的 type]
    await parse(jsonObject, className)
    let finalResult = importLine.join('\n') + '\n\n' + jsonObjectManger.toFreezedTemplate(className!);
    console.log(`===================`);
    console.log(`result: ${finalResult}`);
    // generateClassTemplate(jsonObject, className);
    // generateResponseData(className, jsonObject);
    let e = new vscode.WorkspaceEdit()
    e.replace(editor.document.uri, editor.selection, finalResult)
    vscode.workspace.applyEdit(e)


}


async function parse(jsonObject: any, parentKey: string = "", isArrayObj: boolean = false, sameStructureArray = false, jsonFileKey = ""): Promise<string> {
    let baseFileName = getActivateEditorFileName()
    baseFileName = toUpperCamelCase(baseFileName);
    console.log(`parse ${parentKey} `)
    try {
        if (Array.isArray(jsonObject)) {
            let arrayObjType = await parseArray(jsonObject, parentKey, jsonFileKey)
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
                let wrapper = new CustomType(arrayObjType, arrayObjType, arrayObjType, true)
                console.log(`Add wrapper ${wrapper.toFreezedFieldFormat()}`)
                jsonObjectManger.classWrapper.set(wrapperClassName, wrapper)
            }
            return arrayObjType;
        } else if (typeof jsonObject === 'object' && jsonObject !== null) {
            return await parseObjectToFreezedFormat(jsonObject, parentKey, isArrayObj, sameStructureArray, jsonFileKey);
        } else {
            return typeof jsonObject;
        }
    } catch (e) {
        logError(e)
        return "";
    }

}



async function parseObjectToFreezedFormat(obj: any, parentKey: string = '', isArrayObj: boolean = false, sameStructureArray = false, jsonFileKey = ""): Promise<string> {
    let childCount = Object.keys(obj).length
    console.log(`parse ${parentKey} `)
    // 使用List<Map<String,dynamic>>

    for (const key in obj) {
        // console.log(`key: ${key}`)
        let className = parentKey + toUpperCamelCase(key)
        if (obj.hasOwnProperty(key)) {
            let child = obj[key]
            let childType = typeof child
            console.log(`解析 key : ${parentKey}, 生成物件 : ${className}, 物件類型 : ${childType} `)
            ///子子類別
            let childChild = child[Object.keys(child)[0]]
            let childChildType = typeof childChild
            /// 自己是 object 子子類別也是 object
            let isLastChildMapType = childType === 'object' && childChildType === 'object'
            if (childType === 'object' && child !== null) {
                let customTypeManger: CustomTypeManger = jsonObjectManger.getCustomTypeManger(parentKey) ?? new CustomTypeManger();
                let customType: CustomType;
                // 最後結點為[]
                if (Array.isArray(child)) {
                    customType = arrayPramsFmt(key, child, className, className)
                    console.log(`[]型態 : parentKey ${parentKey}, className : ${className}`)
                }
                //最後結點為{}
                // else if (isLastChildMapType) {
                //     className = `${toUpperCamelCase(className)}`
                //     customType = new CustomType(`Map<String,${className}>`, key, false,true)
                //     console.log(`{}型態: parentKey : ${parentKey}, className : ${className}`)
                //     // 只處理第一個子子類別物件
                //     // child =childChild
                // }
                // 最後結點為基礎型態
                else {
                    customType = getFiledToFreezedFormat(child, key, className, className)
                    console.log(`基礎型態:${parentKey}, 屬性 : ${className}`)
                }

                // console.log(`freezedFieldFormat: ${customType.toFreezedFieldFormat()}`)
                console.log(`freezedFieldFormat: ${customType.toFreezedFieldFormat()}`)
                customTypeManger.addCustomType(customType)
                jsonObjectManger.setCustomTypeManger(parentKey, customTypeManger)
                // jsonObjectManger.printCache()
                await parse(child, className, isArrayObj, sameStructureArray, key)

                // console.log(`freezedFieldFormat: ${freezedFieldFormat}`)
                // console.log(`freezedField: ${freezedFields}`)
                // let template = freezedClassTemplate(key, freezedFieldFormat)
                // classCollection.push(template)
            } else {
                // 單純的
                let cacheManger = jsonObjectManger.getCustomTypeManger(parentKey)
                let customTypeManger: CustomTypeManger = cacheManger ?? new CustomTypeManger();
                let customType: CustomType
                // if (isArrayObj && !sameStructureArray) {
                //     customType = new CustomType(jsonFileKey,"jsonMap","jsonMap",false,false,true)
                // }
                // else {
                //     customType = getFiledToFreezedFormat(child, key, className)
                // }

                customType = getFiledToFreezedFormat(child, key, className)
                console.log(`freezedFieldFormat=> ${customType.toFreezedFieldFormat()}`)
                customTypeManger.addCustomType(customType)
                jsonObjectManger.setCustomTypeManger(parentKey, customTypeManger)
                // jsonObjectManger.printCache()
            }
        }

    }
    return parentKey;
}

/**
 * 對陣列中的每個物件進行解析，並根據欄位出現狀況設定 nullable 屬性。
 * 
 * 流程說明：
 * 1. 使用 collectUniqueKeys 找出在陣列中只出現一次的欄位（uniqueKeys）。
 * 2. 判斷陣列中所有物件的 key 和 value 型別是否一致（sameKeys）。
 * 3. 逐筆物件呼叫 parse 函式進行解析，傳入是否要標記同型欄位。
 * 4. 解析結果（t）會取得對應的自訂型別管理器（cacheManger）。
 * 5. 對該管理器的 customTypeList 逐一檢查，如果欄位 jsonFileKey 在 uniqueKeys 中，將其 nullable 設為 true。
 * 6. 將解析結果 t 累積到 type 陣列。
 * 7. 最後回傳第一筆解析結果的型別字串。
 * 
 * @param arr 要解析的物件陣列
 * @param parentKey 用於追蹤遞迴層級的父 key，預設為空字串
 * @param jsonFileKey 用於辨識 json 檔案中的 key，預設為空字串
 * @returns 回傳第一筆物件解析後的型別字串
 */
async function parseArray(arr: any[], parentKey: string = "", jsonFileKey = ""): Promise<string> {
    let type: string[] = []
    // 找出在整個陣列中只出現一次的 key（unique keys）
    let uniqueKeys = collectUniqueKeys(arr)
    // 判斷陣列中所有物件的 key 與 value 型態是否完全相同
    const sameKeys = allKeyAndValueTypesEqual(arr)
    for (const item of arr) {
        // 解析單一物件，並帶入是否同型 key 的標記
        let t = await parse(item, parentKey, true, sameKeys, jsonFileKey)
        // 取得該解析結果的自訂型別管理器
        let cacheManger = jsonObjectManger.getCustomTypeManger(t)
        // 遍歷管理器內的自訂型別列表，標記 uniqueKeys 的欄位為 nullable
        cacheManger?.customTypeList.map((c)=>{
            if(uniqueKeys.includes(c.jsonFileKey)){
                c.nullAble = true
            }
        })
        type.push(t)
    }
    return type[0]
}
/**
 * 收集物件陣列中只出現一次的欄位名稱（unique keys）。
 * 
 * 演算法邏輯：遍歷陣列中每個物件的 key，
 * 1. 若 key 不在集合中，加入集合
 * 2. 若 key 已存在集合中，從集合中移除（代表重複出現）
 * 
 * 最後回傳只出現過一次的 key 陣列。
 * 
 * @param records 欲檢查的物件陣列
 * @returns 只出現一次的 key 陣列
 */
function collectUniqueKeys(records: Record<string, any>[]): string[] {
    // 用 Set 紀錄目前遇到且只出現過一次的 key
    const uniqueKeySet = new Set<string>();

    for (const record of records) {
        for (const key of Object.keys(record)) {
            if (uniqueKeySet.has(key)) {
                // 已存在代表第二次出現，從集合中移除（表示不唯一）
                uniqueKeySet.delete(key);
            } else {
                // 第一次出現，加入集合
                uniqueKeySet.add(key);
            }
        }
    }

    // 將 Set 轉為陣列回傳
    return Array.from(uniqueKeySet);
}
function getKeyTypeSignature(item: any): string {
    return Object.entries(item)
        .sort(([a], [b]) => a.localeCompare(b))
        .map(([key, value]) => `${key}:${typeof value}`)
        .join(",");
}

function allKeyAndValueTypesEqual(arr: any[]): boolean {
    const set = new Set<string>();
    for (const item of arr) {
        const signature = getKeyTypeSignature(item);
        set.add(signature);
    }
    return set.size === 1;
}

export function getFiledToFreezedFormat(jsonObj: any, fieldJsonKey: string, fieldName: string, customClass: string = ''): CustomType {
    const tsType = typeof jsonObj
    if (customClass !== '') {
        return new CustomType(fieldJsonKey, customClass, fieldName)
    }
    if (jsonObj === null) {
        return new CustomType(fieldJsonKey, 'dynamic', fieldName)
    }
    switch (tsType) {
        case 'string':
            return new CustomType(fieldJsonKey, 'String', fieldName)
        case 'number':
            if (Number.isInteger(jsonObj)) {
                return new CustomType(fieldJsonKey, 'int', fieldName)
            } else {
                return new CustomType(fieldJsonKey, 'double', fieldName)
            }
        case 'boolean':
            return new CustomType(fieldJsonKey, 'bool', fieldName)

        default:
            throw new Error(`Unknow type: ${tsType}`)
    }
}



function arrayPramsFmt(fieldJsonKey: string, jsonObject: any | undefined, parentName: string, customType: string = ''): CustomType {
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
    return new CustomType(fieldJsonKey, typeString, parentName, true)
}