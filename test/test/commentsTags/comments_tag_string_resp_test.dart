import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:tt/commentsTags/string/comments_tag_string_resp.dart';

void main() {
  group('CommentsTagStringResp', () {
    test('應該正確從 JSON 解析', () {
      // 模擬的 API JSON
      const jsonString = '''
      {
        "commentsTags": {
          "data": [
            "flutter",
            "dart",
            "freezed"
          ]
        }
      }
      ''';

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final commentsTagResp = CommentsTagStringResp.fromJson(jsonMap);

      // 驗證結果
      expect(commentsTagResp.commentsTags.data.length, 3);
      expect(commentsTagResp.commentsTags.data[0], 'flutter');
      expect(commentsTagResp.commentsTags.data[1], 'dart');
      expect(commentsTagResp.commentsTags.data[2], 'freezed');
    });

    test('應該處理空資料陣列', () {
      const jsonString = '''
      {
        "commentsTags": {
          "data": []
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsTagResp = CommentsTagStringResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });

    test('應該使用預設值處理缺少的資料', () {
      const jsonString = '''
      {
        "commentsTags": {}
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsTagResp = CommentsTagStringResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });
  });
}
