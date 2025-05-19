import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:tt/comments_tags/dynamic/comments_tag_dynamic_resp.dart';

void main() {
  group('CommentsTagDynamicResp', () {
    test('應該正確從 JSON 解析各種類型資料', () {
      // 模擬的 API JSON
      const jsonString = '''
      {
        "commentsTags": {
          "data": [
            42,
            "text",
            true,
            3.14,
            null
          ]
        }
      }
      ''';

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final commentsTagResp = CommentsTagDynamicResp.fromJson(jsonMap);

      // 驗證結果
      expect(commentsTagResp.commentsTags.data.length, 5);
      expect(commentsTagResp.commentsTags.data[0], 42);
      expect(commentsTagResp.commentsTags.data[1], 'text');
      expect(commentsTagResp.commentsTags.data[2], true);
      expect(commentsTagResp.commentsTags.data[3], 3.14);
      expect(commentsTagResp.commentsTags.data[4], null);
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
      final commentsTagResp = CommentsTagDynamicResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });

    test('應該使用預設值處理缺少的資料', () {
      const jsonString = '''
      {
        "commentsTags": {}
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsTagResp = CommentsTagDynamicResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });
  });
}
