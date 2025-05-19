### Show for Freezed Classes
Quick fixes will only be activated when a verified JSON string is selected.

#### Available Actions:
- **Add Hive Adapter**
  - Only shown when the project includes the `hive` dependency.
  - Converts the current Freezed class into a Hive-compatible structure.
  - Searches for the last used `typeId` within the project.
  - Automatically adds `Hive.registerAdapter()` in the appropriate location.

- **Add Union State**
  - Adds support for union types in Freezed classes.

![Extension Quick Fix](./image/quickfix/extension_quickfix.png)

---

### JSON to Freezed
Quick fixes will only be activated when a verified JSON string is selected.

#### Features:
- Auto-generates Dart models from JSON structures.
- [See more json](./test/lib/complex_json/sample.json) 
- [See more Generation](./test/lib/complex_json/complex_json.dart) 
- **Quick fix**
![JSON to Freezed](./image/quickfix/freezed/json_to_freezed.png)
- **Nested JSON Support**
  
  - example file: `nest_json.dart`


![Nested JSON Snapshot](./image/quickfix/freezed/nest_json_snap.png)

- **Freezed Model Generation**
  - Automatically creates `@freezed`-based classes for nested JSON.

![Freezed Model Snapshot](./image/quickfix/freezed/nest_json_freezed_snap.png)