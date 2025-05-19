import 'package:freezed_annotation/freezed_annotation.dart';
part 'complex_json.g.dart';
part 'complex_json.freezed.dart';

@freezed
class ComplexJson with _$ComplexJson {
  const ComplexJson._();
  const factory ComplexJson({required final Data data}) = _ComplexJson;
  factory ComplexJson.fromJson(Map<String, dynamic> json) =>
      _$ComplexJsonFromJson(json);
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
    @Default('') final String id,
    @Default('') final String title,
    @Default('') final String content,
    @Default('') final String createdAt,
    required final Author author,
    required final Likes likes,
    required final Tags tags,
    required final Comments comments,
    required final ContentBlocks contentBlocks,
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
    @Default('') final String avatar,
    @Default(false) final bool isVerified,
  }) = _AuthorData;
  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);
}

@freezed
class Likes with _$Likes {
  const Likes._();
  const factory Likes({
    @Default(0) final int count,
    @Default(false) final bool userLiked,
  }) = _Likes;
  factory Likes.fromJson(Map<String, dynamic> json) => _$LikesFromJson(json);
}

@freezed
class Tags with _$Tags {
  const Tags._();
  const factory Tags({@Default([]) final List<String> data}) = _Tags;
  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
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
  const factory CommentsData({
    @Default('') final String id,
    @Default('') final String content,
    required final CommentsDataAuthor author,
    @Default('') final String createdAt,
  }) = _CommentsData;
  factory CommentsData.fromJson(Map<String, dynamic> json) =>
      _$CommentsDataFromJson(json);
}

@freezed
class CommentsDataAuthor with _$CommentsDataAuthor {
  const CommentsDataAuthor._();
  const factory CommentsDataAuthor({
    @Default('') final String id,
    @Default('') final String name,
  }) = _CommentsDataAuthor;
  factory CommentsDataAuthor.fromJson(Map<String, dynamic> json) =>
      _$CommentsDataAuthorFromJson(json);
}

@freezed
class ContentBlocks with _$ContentBlocks {
  const ContentBlocks._();
  const factory ContentBlocks({
    @Default([]) final List<ContentBlocksData> data,
  }) = _ContentBlocks;
  factory ContentBlocks.fromJson(Map<String, dynamic> json) =>
      _$ContentBlocksFromJson(json);
}

@freezed
class ContentBlocksData with _$ContentBlocksData {
  const ContentBlocksData._();
  const factory ContentBlocksData({
    @Default('') final String? type,
    @Default('') final String? text,
    @Default('') final String url,
    @Default('') final String? caption,
    @Default(0) final int? duration,
  }) = _ContentBlocksData;
  factory ContentBlocksData.fromJson(Map<String, dynamic> json) =>
      _$ContentBlocksDataFromJson(json);
}
