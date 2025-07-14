import { isLowerCamelCase, isPlural, toLowerCamelCase, toUpperCamelCase } from "../../../utils/src/regex/regex_utils";

function freezedFromJsonMethod(className: string): string {
    return `factory ${className}.fromJson(Map<String, dynamic> json) => _$${className}FromJson(json);`;
}
function freezedWrapperFromJsonMethod(className: string, protoType: string): string {
    return `factory ${className}.fromJson(List<dynamic> jsonArray) => _$${className}FromJson({"${toLowerCamelCase(protoType)}":jsonArray});`;
}

function freezedToJsonMethod(className: string): string {
    return `Map<String, dynamic> toJson() => _$${className}ToJson(this);`;
}


export function toFreezedArrayFieldFormat( fieldJsonKey: string,dartType: string, fieldName: string): string {
    let jsonKey = fieldJsonKey;
    if (!['int', 'double', 'dynamic', 'bool'].includes(dartType)) {
        dartType = toUpperCamelCase(dartType)
    }
    fieldName = toLowerCamelCase(fieldJsonKey)
    let prefix = dartType === 'dynamic' ? "// Parse Null value as dynamic\n\t\t" : ''
    if (isLowerCamelCase(fieldName)) {
        return `${prefix}@Default([]) final List<${dartType}> ${fieldName}`;
    } else {
        return `${prefix}@JsonKey(name: '${jsonKey}')\t@Default([]) final List<${dartType}> ${fieldName}`;
    }
}

export function toFreezedFieldFormat( fieldJsonKey: string, dartType: string, fieldName: string,customType:boolean, nullAble: boolean): string {
    let jsonKey = fieldJsonKey;
    
   
    if (!['int', 'double', 'dynamic', 'bool'].includes(dartType)&&!customType) {
        dartType = toUpperCamelCase(dartType)
    }
    fieldName = toLowerCamelCase(fieldJsonKey)
    let defaultVal = setFreezedDefault(dartType);
    let fDefault = defaultVal ? `@Default(${defaultVal})` : '';
    if(customType){
        dartType =dartType
        defaultVal= undefined
    }
    let prefix = dartType === 'dynamic' ? "// Parse Null value as dynamic\n\t\t" : ''
    dartType=  defaultVal ? `final ${dartType}`  :`required final ${dartType}`;
    if(nullAble){
        dartType =dartType+"?"
    }
    if (isLowerCamelCase(jsonKey)) {
        return `${prefix} ${fDefault} ${dartType} ${fieldName}`;
    } else {
        return `${prefix} ${fDefault} @JsonKey(name: '${jsonKey}')\t${dartType} ${fieldName}`;
    }
}



export function setFreezedDefault(dartType: string): string|undefined {
   if (dartType === 'int') {
        return '0';
    } else if (dartType === 'double') {
        return '0.0';
    } else if (dartType === 'bool') {
        return 'false';
    }else if (dartType === 'String') {
        return "''"; 
    }
    else {
        return undefined;
    }
}


/// 這裡的 params 要轉成 dart  的格式 =>[final String? name]
export function freezedClassTemplate(className: string, fields: string[]): string {
    className = toUpperCamelCase(className)
    let fromJsonMethod = freezedFromJsonMethod(className);
    let clz = `@freezed
class ${className} with _$${className} {
\tconst ${className}._();
\tconst factory ${className}({\n\t\t${fields.join(',\n\t\t')},
\t}) = _${className};
\t${fromJsonMethod}
}`
    // if (isPlural(className) && !className.endsWith('ss')) {
    //     clz = `/// ignore Verify plural type naming confusion\n${clz}`;
    // }
    return clz
}


/// 這裡的 params 要轉成 dart  的格式 =>[final String? name]
export function freezedJsonMapListClassTemplate(className: string, memberName: string): string {
  className = toUpperCamelCase(className);
  const fromJsonMethod = freezedFromJsonMethod(className);

  let clz = `@freezed
class ${className} with _\$${className} {
  const ${className}._();
  const factory ${className}({
    List<Map<String, dynamic>> ${memberName},
  }) = _${className};
  
  ${fromJsonMethod}
}`;
  return clz;
}

/// 這裡的 params 要轉成 dart  的格式 =>[final String? name]
export function freezedWrapperClassTemplate(className: string, fields: string[], protoType: string): string {
    className = toUpperCamelCase(className)
    let fromJsonMethod = freezedWrapperFromJsonMethod(className, protoType);
    let clz = `@freezed
class ${className} with _$${className} {
\tconst ${className}._();
\tconst factory ${className}({\n\t\t${fields.join(',\n\t\t')},
\t}) = _${className};
\t${fromJsonMethod}
}`
    // if (isPlural(className) && !className.endsWith('ss')) {
    //     clz = `/// ignore Verify plural type naming confusion\n${clz}`;
    // }
    return clz
}