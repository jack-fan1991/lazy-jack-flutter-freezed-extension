import { toUpperCamelCase } from "../../../utils/src/regex/regex_utils";
import { freezedClassTemplate, freezedWrapperClassTemplate, toFreezedArrayFieldFormat, toFreezedFieldFormat } from "./freezed_template";

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

    getFreezedFields(key: string): string[] | undefined {
        return this.freezedFieldsCache.get(key)?.customTypeList.map((item) => item.toFreezedFieldFormat())
    }

    printCache(): void {
        for (const key of this.freezedFieldsCache.keys()) {
            let value = this.freezedFieldsCache.get(key)
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
                let template = freezedWrapperClassTemplate(className, [value.toFreezedFieldFormat()], value.fieldType)
                this.freezedTemplateList.push(template)
            }
        }
    }

    // @param mainClass: 最外層的class name 這裡使用baseFileName
    toFreezedTemplate(mainClass: string): string {
        this.parsWrapper()
        let result = ''
        let mainFreezedFields = this.getFreezedFields(mainClass) ?? []
        let subClass = this.getCustomTypeManger(mainClass)?.customTypeList.map((customType) => customType.fieldName) ?? []
        if (mainFreezedFields.length == 0) {
            throw new Error(`mainClass: ${mainClass} not found`)
        }
        let mainClassTemplate = freezedClassTemplate(mainClass, mainFreezedFields)
        /// 避免重複
        if (subClass.filter((sub) => toUpperCamelCase(sub) === mainClass).length == 0) {
            this.freezedTemplateList.push(mainClassTemplate)
        }
        for (let className of subClass) {
            let customTypeManger = this.getCustomTypeManger(className)
            if (customTypeManger != null) {
                this.toFreezedTemplate(className)

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
        if (this.customTypeList.filter((t) => t.fieldName === customType.fieldName).length > 0) {
            for (let t of this.customTypeList) {
                if (customType.fieldName === t.fieldName) {
                    if (customType.fieldType == t.fieldType) {
                        return
                    }
                    if (t.fieldType == 'dynamic') {
                        let idx = this.customTypeList.indexOf(t)
                        this.customTypeList[idx] = customType
                    }
                }
            }
        } else {
            this.customTypeList.push(customType)
        }
    }

}

export class CustomType {
    fieldType: string;
    fieldName: string;
    isArray: boolean;
    constructor(fieldType: any, fieldName: string, isArray: boolean = false) {
        this.fieldType = fieldType;
        this.fieldName = fieldName;
        this.isArray = isArray;
    }
    toFreezedFieldFormat(): string {
        return this.isArray ? toFreezedArrayFieldFormat(this.fieldType, this.fieldName) : toFreezedFieldFormat(this.fieldType, this.fieldName)
    }
}

