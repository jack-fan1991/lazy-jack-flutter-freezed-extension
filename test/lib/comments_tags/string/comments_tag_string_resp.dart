import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_tag_string_resp.g.dart';
part 'comments_tag_string_resp.freezed.dart';

@freezed
class CommentsTagStringResp with _$CommentsTagStringResp {
  const CommentsTagStringResp._();
  const factory CommentsTagStringResp({
    required final CommentsTagStringRespCommentsTags commentsTags,
  }) = _CommentsTagStringResp;
  factory CommentsTagStringResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagStringRespFromJson(json);
}

@freezed
class CommentsTagStringRespCommentsTags
    with _$CommentsTagStringRespCommentsTags {
  const CommentsTagStringRespCommentsTags._();
  const factory CommentsTagStringRespCommentsTags({
    @Default([]) final List<String> data,
  }) = _CommentsTagStringRespCommentsTags;
  factory CommentsTagStringRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) => _$CommentsTagStringRespCommentsTagsFromJson(json);
}
