import 'package:freezed_annotation/freezed_annotation.dart';
## Features

* Prefix "c2" snippets, means "clipboard to" will use clipboard as value
* Prefix "b2" snippets means "baseFileName to" will use baseFileName as value
* Support
  + Quick fix(option[]:on text selected) 
  => Extension  will be show in quickFix action when text selected
  + Menu(option[]:  right click, on text selected) 
  => Extension  will be show in right click menu when text selected


#### dart 

|  Shortcut   |  Description  | Supplement| Support|
|  ----  | ----  |------|-----|
| forLoop| just for loop   |||
| for    | just for loop   ||
| finalFiledNew   | |final field= Field(); |
| finalFiled  | |final  Field field; |
| tc     | Try catch||
| toc    | Try on catch||
| fun    |  Function definition ||
| c2Factory  | clipboard to factory | const factory Clipboard.factoryName() = Clipboard(); |
| c2FromJson   | clipboard to FromJson |  factory Clipboard.fromJson(Map<String, dynamic> json) => _ClipboardFromJson(json); <br>  Map<String, dynamic> toJson() => _$ClipboardToJson(this); |
| b2FromJson   | base file name to FromJson |factory baseFileName.fromJson(Map<String, dynamic> json) => _baseFileNameFromJson(json); <br> Map<String, dynamic> toJson() => _$baseFileNameToJson(this); |Menu( <br>1.on text selected<br> 2.right click ) |

#### freezed 

* State  snippets: will take base file name as class name 

|  Shortcut   |  Description  | Supplement| Support|
|  ----  | ----  |------|------|
| fz.p     |import base_filename.g.dart<br>import base_filename.freezed.dart<br>  |After import can select ( .g / .freezed )|Menu( <br>1.right click ) |
| fzClass    | Create Freezed Data Class  |  freezed class |Menu( <br>1.right click ) |
| fzUnion   |Create Freezed Data Class with state  | freezed Union types and Sealed class template<br>|Menu( <br>1.right click ) |
| fzAddState    | Add New Freezed State | 搭配 freezed Union types|Menu( <br>1.right click ) |
| fzC2State  | Copy Class Name to Freezed State| 搭配 freezed Union types|

### 

#### dart test

|  Shortcut   |  Description  | Supplement| Support|
|  ----  | ----  |------|
| ut     | Define a Unit test||
| utg    | Define a Unit test group||

```
login
    |___bloc 
    |   |___login_bLoc.dart
    |   |___login_event.dart   
    |   |___login_state.dart
    |
    |__login_view.dart
    
```

### customer freeze class

```dart
// fzc
@freezed
class DataClass with _$DataClass {
  const factory DataClass() = _DataClass;
  // copy class name "DataClass"
  // now "DataClass" in your copy board
  // fzc2State
  const factory DataClass.newState() = _DataClassNewState;
} 
```

### Use state snippets 

*  login_bLoc.dart

```dart
//fzWithState
@freezed
class LoginBloc with _$LoginBloc {
  const factory LoginBloc.init() = _Initial;
  //fzState
  const factory LoginBloc.newState() = _NewState;
    }
}   
```

*  login_event.dart

```dart
//fzWithState
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initial() = _Initial;
  //fzState
  const factory LoginEvent.newState() = _NewState;
}

```

*  login_event.dart

```dart
//fzWithState
@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  //fzState
  const factory LoginState.newState() = _NewState;
}
```
