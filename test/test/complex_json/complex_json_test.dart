import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tt/complex_json/complex_json.dart';
import 'package:tt/nest_json/nest_json.dart';

void main() {
  group('NestJson Model - 複雜 JSON 解析測試', () {
    const jsonString = '''{
      "data": {
        "post": {
          "id": "p123",
          "title": "Flutter 是未來嗎？",
          "content": "這篇文章將探討 Flutter 的發展與未來趨勢。",
          "createdAt": "2025-05-19T10:30:00Z",
          "author": {
            "data": {
              "id": "u001",
              "name": "Jack",
              "avatar": "https://example.com/avatar/u001.png",
              "isVerified": true
            }
          },
          "likes": {
            "count": 123,
            "userLiked": true
          },
          "tags": {
            "data": ["Flutter", "跨平台", "前端"]
          },
          "comments": {
            "data": [
              {
                "id": "c1",
                "content": "寫得很好，期待下一篇！",
                "author": {
                  "id": "u002",
                  "name": "Amy"
                },
                "createdAt": "2025-05-19T11:00:00Z"
              },
              {
                "id": "c2",
                "content": "我覺得 React Native 也不錯。",
                "author": {
                  "id": "u003",
                  "name": "Tom"
                },
                "createdAt": "2025-05-19T11:15:00Z"
              }
            ]
          },
          "contentBlocks": {
            "data": [
              {
                "type": "text",
                "text": "以下是 Flutter 的優勢："
              },
              {
                "type": "image",
                "url": "https://example.com/image/flutter-advantage.png",
                "caption": "Flutter 優勢總結"
              },
              {
                "type": "video",
                "url": "https://example.com/video/flutter-intro.mp4",
                "duration": 120
              }
            ]
          }
        }
      }
    }''';

    test('fromJson 正確解析各層級資料', () {
      final json = jsonDecode(jsonString);
      final model = ComplexJson.fromJson(json);

      expect(model.data.post.id, 'p123');
      expect(model.data.post.title, 'Flutter 是未來嗎？');
      expect(model.data.post.content.startsWith('這篇文章'), isTrue);
      expect(model.data.post.createdAt, '2025-05-19T10:30:00Z');

      // 作者
      expect(model.data.post.author.data.id, 'u001');
      expect(model.data.post.author.data.name, 'Jack');
      expect(model.data.post.author.data.avatar, contains('u001.png'));
      expect(model.data.post.author.data.isVerified, isTrue);

      // 讚
      expect(model.data.post.likes.count, 123);
      expect(model.data.post.likes.userLiked, isTrue);

      // 標籤
      expect(model.data.post.tags.data, containsAll(['Flutter', '前端']));

      // 留言
      expect(model.data.post.comments.data.length, 2);
      expect(model.data.post.comments.data[1].author.name, 'Tom');
      expect(model.data.post.comments.data[0].content, contains('期待'));

      // 多型內容
      final blocks = model.data.post.contentBlocks.data;
      expect(blocks.length, 3);
      expect(blocks[0].type, 'text');
      expect(blocks[1].url, startsWith('https://example.com/image'));
      expect(blocks[2].duration, 120);
    });
  });
}
