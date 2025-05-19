import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:tt/comments_diff/comments_diff_resp.dart';

void main() {
  group('CommentsDiffResp', () {
    test('should parse correctly from JSON', () {
      // 模擬的 API JSON
      const jsonString = '''
      {
        "commentsDiff": {
          "data": [
            {
              "status": "1",
              "content": "Good post"
            },
            {
              "status": "2",
              "contentDiff": "Thanks!"
            }
          ]
        }
      }
      ''';

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final commentsDiffResp = CommentsDiffResp.fromJson(jsonMap);

      // 驗證結果
      expect(commentsDiffResp.commentsDiff.data.length, 2);
      expect(commentsDiffResp.commentsDiff.data[0].status, '1');
      expect(commentsDiffResp.commentsDiff.data[0].content, 'Good post');
      expect(commentsDiffResp.commentsDiff.data[0].contentDiff, '');
      expect(commentsDiffResp.commentsDiff.data[1].status, '2');
      expect(commentsDiffResp.commentsDiff.data[1].content, '');
      expect(commentsDiffResp.commentsDiff.data[1].contentDiff, 'Thanks!');
    });

    test('should fallback to default if fields missing', () {
      const jsonString = '''
      {
        "commentsDiff": {
          "data": [{}]
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsDiffResp = CommentsDiffResp.fromJson(jsonMap);

      expect(commentsDiffResp.commentsDiff.data[0].status, '');
      expect(commentsDiffResp.commentsDiff.data[0].content, '');
      expect(commentsDiffResp.commentsDiff.data[0].contentDiff, '');
      expect(commentsDiffResp.commentsDiff.data[0].nullAble, '');
    });

    test('should handle empty data array', () {
      const jsonString = '''
      {
        "commentsDiff": {
          "data": []
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsDiffResp = CommentsDiffResp.fromJson(jsonMap);

      expect(commentsDiffResp.commentsDiff.data.length, 0);
    });

    test('should handle nullable fields', () {
      const jsonString = '''
      {
        "commentsDiff": {
          "data": [
            {
              "status": "3",
              "nullAble": "not null"
            }
          ]
        }
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsDiffResp = CommentsDiffResp.fromJson(jsonMap);

      expect(commentsDiffResp.commentsDiff.data[0].status, '3');
      expect(commentsDiffResp.commentsDiff.data[0].content, '');
      expect(commentsDiffResp.commentsDiff.data[0].contentDiff, '');
      expect(commentsDiffResp.commentsDiff.data[0].nullAble, 'not null');
    });
  });
}
