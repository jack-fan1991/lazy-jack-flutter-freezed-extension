import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tt/nest_json/nest_json.dart';

void main() {
  test('NestJson should parse correctly from nested JSON', () {
    const jsonRaw = '''
    {
      "data": {
        "post": {
          "title": "Post 1",
          "author": {
            "data": {
              "id": "u1",
              "name": "Jack"
            }
          },
          "comments": {
            "data": [
              { "content": "Good post" },
              { "content": "Thanks!" }
            ]
          },
          "commentsDiff": {
            "data": [
              { "status": "1", "content": "Good post" },
              { "status": "2", "contentDiff": "Thanks!" }
            ]
          },
          "commentsTags": {
            "data": [ "flutter", "dart", "freezed" ]
          },
          "commentsValues": {
            "data": [ 42, "text", true ]
          },
          "commentsObj": {
            "data": [
              { "content": "Good post", "author": "User1" },
              { "content": "Thanks!", "author": "User2" }
            ]
          },
          "commentsMultiObj": {
            "data": [
              { "type": "text", "content": "Hello" },
              {
                "type": "image",
                "url": "https://example.com/img.jpg",
                "width": 100
              }
            ]
          }
        }
      }
    }
    ''';

    final jsonMap = json.decode(jsonRaw) as Map<String, dynamic>;
    final result = NestJson.fromJson(jsonMap);

    // 驗證標題
    expect(result.data.post.title, 'Post 1');

    // 驗證作者資訊
    expect(result.data.post.author.data.id, 'u1');
    expect(result.data.post.author.data.name, 'Jack');

    // 驗證 comments
    expect(result.data.post.comments.data.length, 2);
    expect(result.data.post.comments.data[0].content, 'Good post');
    expect(result.data.post.comments.data[1].content, 'Thanks!');

    // 驗證 commentsDiff
    expect(result.data.post.commentsDiff.data[0].status, '1');
    expect(result.data.post.commentsDiff.data[1].contentDiff, 'Thanks!');

    // 驗證 commentsTags
    expect(result.data.post.commentsTags.data, ['flutter', 'dart', 'freezed']);

    // 驗證 commentsValues
    expect(result.data.post.commentsValues.data[0], 42);
    expect(result.data.post.commentsValues.data[1], 'text');
    expect(result.data.post.commentsValues.data[2], true);

    // 驗證 commentsObj
    expect(result.data.post.commentsObj.data[0].author, 'User1');
    expect(result.data.post.commentsObj.data[1].content, 'Thanks!');

    // 驗證 commentsMultiObj
    expect(result.data.post.commentsMultiObj.data[0].type, 'text');
    expect(
      result.data.post.commentsMultiObj.data[1].url,
      'https://example.com/img.jpg',
    );
  });
  group('NestJson Model 測試', () {
    final json = {
      "data": {
        "post": {
          "title": "Test Title",
          "author": {
            "data": {"id": "1", "name": "Jack"},
          },
          "comments": {
            "data": [
              {"content": "留言1"},
              {"content": "留言2"},
            ],
          },
          "commentsDiff": {
            "data": [
              {"status": "add", "content": "留言1"},
              {"status": "edit", "content": "留言2", "contentDiff": "留言2-修改"},
            ],
          },
          "commentsTags": {
            "data": ["tag1", "tag2"],
          },
          "commentsValues": {
            "data": [null, 123, "abc"],
          },
          "commentsObj": {
            "data": [
              {"content": "留言物件1", "author": "A"},
              {"content": "留言物件2", "author": "B"},
            ],
          },
          "commentsMultiObj": {
            "data": [
              {
                "type": "img",
                "content": null,
                "url": "http://img",
                "width": 100,
              },
              {"type": "text", "content": "純文字", "url": null, "width": null},
            ],
          },
        },
      },
    };

    test('fromJson 反序列化', () {
      final model = NestJson.fromJson(json);
      expect(model.data.post.title, 'Test Title');
      expect(model.data.post.author.data.id, '1');
      expect(model.data.post.author.data.name, 'Jack');
      expect(model.data.post.comments.data.length, 2);
      expect(model.data.post.comments.data[0].content, '留言1');
      expect(model.data.post.commentsDiff.data[1].contentDiff, '留言2-修改');
      expect(model.data.post.commentsTags.data, contains('tag1'));
      expect(model.data.post.commentsValues.data[0], null);
      expect(model.data.post.commentsValues.data[1], 123);
      expect(model.data.post.commentsObj.data[1].author, 'B');
      expect(model.data.post.commentsMultiObj.data[0].type, 'img');
      expect(model.data.post.commentsMultiObj.data[1].content, '純文字');
    });

    test('反序列化後模型內容應正確（不使用 toJson）', () {
      final model = NestJson.fromJson(json);

      expect(model.data.post.title, 'Test Title');
      expect(model.data.post.author.data.name, 'Jack');

      expect(model.data.post.comments.data[1].content, '留言2');

      expect(model.data.post.commentsDiff.data[0].status, 'add');
      expect(model.data.post.commentsDiff.data[0].content, '留言1');

      expect(model.data.post.commentsTags.data[1], 'tag2');

      expect(model.data.post.commentsValues.data[2], 'abc');

      expect(model.data.post.commentsObj.data[0].content, '留言物件1');
      expect(model.data.post.commentsObj.data[0].author, 'A');

      final multiObj = model.data.post.commentsMultiObj.data[0];
      expect(multiObj.type, 'img');
      expect(multiObj.url, 'http://img');
    });

    test('空值與預設值處理（從 JSON 字串）', () {
      const emptyJsonString = '''
  {
    "data": {
      "post": {
        "author": {"data": {}},
        "comments": {},
        "commentsDiff": {},
        "commentsTags": {},
        "commentsValues": {},
        "commentsObj": {},
        "commentsMultiObj": {}
      }
    }
  }
  ''';

      final Map<String, dynamic> jsonMap = jsonDecode(emptyJsonString);
      final model = NestJson.fromJson(jsonMap);

      expect(model.data.post.title, '');
      expect(model.data.post.author.data.id, '');
      expect(model.data.post.comments.data, isEmpty);
      expect(model.data.post.commentsDiff.data, isEmpty);
      expect(model.data.post.commentsTags.data, isEmpty);
      expect(model.data.post.commentsValues.data, isEmpty);
      expect(model.data.post.commentsObj.data, isEmpty);
      expect(model.data.post.commentsMultiObj.data, isEmpty);
    });
  });
}
