import { toUpperCamelCase } from "../../../utils/src/regex/regex_utils";
import { freezedClassTemplate, freezedJsonMapListClassTemplate, freezedWrapperClassTemplate, toFreezedArrayFieldFormat, toFreezedFieldFormat } from "./freezed_template";

export class JsonObjectManger {
    freezedFieldsCache: Map<string, CustomTypeManger> = new Map();
    classWrapper: Map<string, CustomType> = new Map();
    freezedTemplateList: string[] = []

    getCustomTypeManger(key: string): CustomTypeManger | undefined {
        return this.freezedFieldsCache.get(key)
    }

    setCustomTypeManger(key: string, value: CustomTypeManger): void {
        this.freezedFieldsCache.set(key, value)
    }

    getFreezedFieldsAsString(key: string): string[] | undefined {
        return this.freezedFieldsCache.get(key)?.customTypeList.map((item) => item.toFreezedFieldFormat())
    }

    printCache(): void {
        for (const key of this.freezedFieldsCache.keys()) {
            let value = this.freezedFieldsCache.get(key)
            console.log('============================')
            console.log(`freezedFieldsCache key: ${key} value: ${value?.customTypeList.map((item) => item.toFreezedFieldFormat())}`)
        }

    }

    parsWrapper() {
        if (this.classWrapper.size == 0) {
            return
        }
        for (const className of this.classWrapper.keys()) {
            let value = this.classWrapper.get(className)
            if (value != null) {
                let template = freezedWrapperClassTemplate(className, [value.toFreezedFieldFormat()], value.dartTypeName)
                this.freezedTemplateList.push(template)
            }
        }
    }

    // @param mainClass: 最外層的class name 這裡使用baseFileName
    toFreezedTemplate(mainClass: string): string {
        this.parsWrapper()
        let result = ''
        let mainFreezedFields = this.getFreezedFieldsAsString(mainClass) ?? []
        let manger = this.getCustomTypeManger(mainClass)
        let subClass = manger?.customTypeList.map((customType) => customType.fieldName) ?? []
        if (mainFreezedFields.length == 0) {
            throw new Error(`mainClass: ${mainClass} not found`)
        }
        let mainClassTemplate = freezedClassTemplate(mainClass, mainFreezedFields)
        /// 避免重複
        if (subClass.filter((sub) => toUpperCamelCase(sub) === mainClass).length == 0) {
            /// If subClass has name "jsonMap"
            // if (manger?.isDartJsonMapList()) {
            //     let memberName = manger.getDartJsonMapListMemberName()
            //     mainClassTemplate = freezedJsonMapListClassTemplate(mainClass,memberName)
            //     this.freezedTemplateList.push(mainClassTemplate)
            //     return this.freezedTemplateList.join('\r\n\n')
            // } else {
            //     this.freezedTemplateList.push(mainClassTemplate)
            // }
            this.freezedTemplateList.push(mainClassTemplate)

        }

        for (let className of subClass) {
            let customTypeManger = this.getCustomTypeManger(className)
            if (customTypeManger != null) {
                if (subClass.length == 1) {
                    this.toFreezedTemplate(className)
                } else {
                    this.toFreezedTemplate(className)
                }


            }
        }
        return this.freezedTemplateList.join('\r\n\n')
    }
}

export class CustomTypeManger {
    customTypeList: CustomType[] = []
    // 
    addCustomType(customType: CustomType) {
        if (this.customTypeList.length === 0) {
            this.customTypeList.push(customType)
            return
        }
        // 
        if (customType.dartTypeName != "jsonMap" && this.customTypeList.filter((t) => t.fieldName === customType.fieldName).length > 0) {
            for (let t of this.customTypeList) {
                if (customType.fieldName === t.fieldName) {
                    if (customType.dartTypeName == t.dartTypeName) {
                        return
                    }
                    if (t.dartTypeName == 'dynamic') {
                        let idx = this.customTypeList.indexOf(t)
                        this.customTypeList[idx] = customType
                    }
                }
            }
        } else {
            this.customTypeList.push(customType)
        }
    }

    isNullAbleFieldName(jsonFieldName: string): boolean {
        if (this.customTypeList.length == 0) {
            return false
        }
        return this.customTypeList.filter((t) => toUpperCamelCase(t.jsonFileKey) === toUpperCamelCase(jsonFieldName)).length == 0
    }

    isDartJsonMapList(): boolean {
        return this.customTypeList.filter((t) => toUpperCamelCase(t.fieldName) === toUpperCamelCase("jsonMap")).length > 0
    }

    getDartJsonMapListMemberName() {
        return this.customTypeList.filter((t) => toUpperCamelCase(t.fieldName) === toUpperCamelCase("jsonMap"))[0].jsonFileKey
    }

}

export class CustomType {
    jsonFileKey: string;
    dartTypeName: string;
    fieldName: string;
    isArray: boolean;
    // 強制使用fieldType
    customType: boolean;
    nullAble: boolean;
    // 先棄用
    useJsonMap: boolean;
    constructor(fieldJsonKey: string, dartTypeName: string, fieldName: string, isArray: boolean = false, customType: boolean = false, useJsonMap: boolean = false, nullAble = false) {
        this.jsonFileKey = fieldJsonKey;
        this.dartTypeName = dartTypeName;
        this.fieldName = fieldName;
        this.isArray = isArray;
        this.customType = customType;
        // 先棄用
        this.useJsonMap = useJsonMap;
        this.nullAble = nullAble
    }
    toFreezedFieldFormat(): string {
        return this.isArray ? toFreezedArrayFieldFormat(this.jsonFileKey, this.dartTypeName, this.fieldName) : toFreezedFieldFormat(this.jsonFileKey, this.dartTypeName, this.fieldName, this.customType, this.nullAble)
    }
}

