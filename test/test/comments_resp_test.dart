import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:tt/comments/comments_resp.dart';

void main() {
  group('CommentsResp', () {
    test('should parse correctly from JSON', () {
      // 模擬的 API JSON
      const jsonString = '''
      {
        "comments": {
          "data": [
            {
              "content": "Good post"
            },
            {
              "content": "Thanks!"
            }
          ]
        }
      }
      ''';

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final commentsResp = CommentsResp.fromJson(jsonMap);

      // 驗證結果
      expect(commentsResp.comments.data.length, 2);
      expect(commentsResp.comments.data[0].content, 'Good post');
      expect(commentsResp.comments.data[1].content, 'Thanks!');
    });

    test('should fallback to default if content missing', () {
      const jsonString = '''
      {
        "comments": {
          "data": [{}]
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsResp = CommentsResp.fromJson(jsonMap);

      expect(commentsResp.comments.data[0].content, '');
    });

    test('should handle empty data array', () {
      const jsonString = '''
      {
        "comments": {
          "data": []
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsResp = CommentsResp.fromJson(jsonMap);

      expect(commentsResp.comments.data.length, 0);
    });
  });
}
