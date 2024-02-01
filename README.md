# Feature 

## Quickfix

  ### show when freezed class
  * freezed sample
  ``` java
  @freezed
class WidgetTest with _$WidgetTest {
      const WidgetTest._();
      const factory WidgetTest({
        required final String test,
      }) = _WidgetTest;
      factory WidgetTest.fromJson(Map<String, dynamic> json) =>
          _$WidgetTestFromJson(json);
    }

  ```
  * Action 
    * Add hive Adapter
      * show only use hive dependency
      * convert current freezed to Hive structure
      * search last Hive typeId in project
      * auto open Hive.registerAdapter   
    * Add Union state

  ![](./image/quickfix/extension_quickfix.png)
  
  * Json to freezed quick fix
    * Activate if json verify

    ![](./image/quickfix/freezed/json_to_freezed.png)

  * Convert to freezed Result
    ```dart 
    import 'package:freezed_annotation/freezed_annotation.dart';
    part 'test_api.g.dart';
    part 'test_api.freezed.dart';

    @freezed
    class TestApi with _$TestApi {
      const TestApi._();
      const factory TestApi({
        final User? user,
        final Location? location,
        @Default([]) final List<String> devices,
        @Default([]) final List<Devices2> devices2,
      }) = _TestApi;
      factory TestApi.fromJson(Map<String, dynamic> json) =>
          _$TestApiFromJson(json);
    }

    @freezed
    class Devices2 with _$Devices2 {
      const Devices2._();
      const factory Devices2({
        final String? logo,
      }) = _Devices2;
      factory Devices2.fromJson(Map<String, dynamic> json) =>
          _$Devices2FromJson(json);
    }

    @freezed
    class Location with _$Location {
      const Location._();
      const factory Location({
        final String? city,
        final String? state,
        final int? zipcode,
      }) = _Location;
      factory Location.fromJson(Map<String, dynamic> json) =>
          _$LocationFromJson(json);
    }

    @freezed
    class User with _$User {
      const User._();
      const factory User({
        final Name? name,
        final int? age,
        final String? email,
      }) = _User;
      factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
    }

    @freezed
    class Name with _$Name {
      const Name._();
      const factory Name({
        final String? first,
        final String? last,
      }) = _Name;
      factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
    }


    ```
