import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:tt/comments_tags/num/comments_tag_num_resp.dart';

void main() {
  group('CommentsTagNumResp', () {
    test('應該正確從 JSON 解析', () {
      // 模擬的 API JSON
      const jsonString = '''
      {
        "commentsTags": {
          "data": [
            1,
            2.5,
            3
          ]
        }
      }
      ''';

      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final commentsTagResp = CommentsTagNumResp.fromJson(jsonMap);

      // 驗證結果
      expect(commentsTagResp.commentsTags.data.length, 3);
      expect(commentsTagResp.commentsTags.data[0], 1);
      expect(commentsTagResp.commentsTags.data[1], 2.5);
      expect(commentsTagResp.commentsTags.data[2], 3);
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
      final commentsTagResp = CommentsTagNumResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });

    test('應該使用預設值處理缺少的資料', () {
      const jsonString = '''
      {
        "commentsTags": {}
      }
      ''';

      final jsonMap = json.decode(jsonString);
      final commentsTagResp = CommentsTagNumResp.fromJson(jsonMap);

      expect(commentsTagResp.commentsTags.data.length, 0);
    });
  });
}
