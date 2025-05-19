import 'package:freezed_annotation/freezed_annotation.dart';
part 'nest_json.g.dart';
part 'nest_json.freezed.dart';

@freezed
class NestJson with _$NestJson {
  const NestJson._();
  const factory NestJson({required final Data data}) = _NestJson;
  factory NestJson.fromJson(Map<String, dynamic> json) =>
      _$NestJsonFromJson(json);
}

@freezed
class Data with _$Data {
  const Data._();
  const factory Data({required final Post post}) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    @Default('') final String title,
    required final Author author,
    required final Comments comments,
    required final CommentsDiff commentsDiff,
    required final CommentsTags commentsTags,
    required final CommentsValues commentsValues,
    required final CommentsObj commentsObj,
    required final CommentsMultiObj commentsMultiObj,
  }) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class Author with _$Author {
  const Author._();
  const factory Author({required final AuthorData data}) = _Author;
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
class AuthorData with _$AuthorData {
  const AuthorData._();
  const factory AuthorData({
    @Default('') final String id,
    @Default('') final String name,
  }) = _AuthorData;
  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);
}

@freezed
class Comments with _$Comments {
  const Comments._();
  const factory Comments({@Default([]) final List<CommentsData> data}) =
      _Comments;
  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}

@freezed
class CommentsData with _$CommentsData {
  const CommentsData._();
  const factory CommentsData({@Default('') final String content}) =
      _CommentsData;
  factory CommentsData.fromJson(Map<String, dynamic> json) =>
      _$CommentsDataFromJson(json);
}

@freezed
class CommentsDiff with _$CommentsDiff {
  const CommentsDiff._();
  const factory CommentsDiff({@Default([]) final List<CommentsDiffData> data}) =
      _CommentsDiff;
  factory CommentsDiff.fromJson(Map<String, dynamic> json) =>
      _$CommentsDiffFromJson(json);
}

@freezed
class CommentsDiffData with _$CommentsDiffData {
  const CommentsDiffData._();
  const factory CommentsDiffData({
    @Default('') final String status,
    @Default('') final String? content,
    @Default('') final String? contentDiff,
  }) = _CommentsDiffData;
  factory CommentsDiffData.fromJson(Map<String, dynamic> json) =>
      _$CommentsDiffDataFromJson(json);
}

@freezed
class CommentsTags with _$CommentsTags {
  const CommentsTags._();
  const factory CommentsTags({@Default([]) final List<String> data}) =
      _CommentsTags;
  factory CommentsTags.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagsFromJson(json);
}

@freezed
class CommentsValues with _$CommentsValues {
  const CommentsValues._();
  const factory CommentsValues({
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> data,
  }) = _CommentsValues;
  factory CommentsValues.fromJson(Map<String, dynamic> json) =>
      _$CommentsValuesFromJson(json);
}

@freezed
class CommentsObj with _$CommentsObj {
  const CommentsObj._();
  const factory CommentsObj({@Default([]) final List<CommentsObjData> data}) =
      _CommentsObj;
  factory CommentsObj.fromJson(Map<String, dynamic> json) =>
      _$CommentsObjFromJson(json);
}

@freezed
class CommentsObjData with _$CommentsObjData {
  const CommentsObjData._();
  const factory CommentsObjData({
    @Default('') final String content,
    @Default('') final String author,
  }) = _CommentsObjData;
  factory CommentsObjData.fromJson(Map<String, dynamic> json) =>
      _$CommentsObjDataFromJson(json);
}

@freezed
class CommentsMultiObj with _$CommentsMultiObj {
  const CommentsMultiObj._();
  const factory CommentsMultiObj({
    @Default([]) final List<CommentsMultiObjData> data,
  }) = _CommentsMultiObj;
  factory CommentsMultiObj.fromJson(Map<String, dynamic> json) =>
      _$CommentsMultiObjFromJson(json);
}

@freezed
class CommentsMultiObjData with _$CommentsMultiObjData {
  const CommentsMultiObjData._();
  const factory CommentsMultiObjData({
    @Default('') final String type,
    @Default('') final String? content,
    @Default('') final String? url,
    @Default(0) final int? width,
  }) = _CommentsMultiObjData;
  factory CommentsMultiObjData.fromJson(Map<String, dynamic> json) =>
      _$CommentsMultiObjDataFromJson(json);
}
