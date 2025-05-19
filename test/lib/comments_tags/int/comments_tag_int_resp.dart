import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_tag_int_resp.g.dart';
part 'comments_tag_int_resp.freezed.dart';

@freezed
class CommentsTagIntResp with _$CommentsTagIntResp {
  const CommentsTagIntResp._();
  const factory CommentsTagIntResp({
    required final CommentsTagIntRespCommentsTags commentsTags,
  }) = _CommentsTagIntResp;
  factory CommentsTagIntResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagIntRespFromJson(json);
}

@freezed
class CommentsTagIntRespCommentsTags with _$CommentsTagIntRespCommentsTags {
  const CommentsTagIntRespCommentsTags._();
  const factory CommentsTagIntRespCommentsTags({
    @Default([]) final List<int> data,
  }) = _CommentsTagIntRespCommentsTags;
  factory CommentsTagIntRespCommentsTags.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagIntRespCommentsTagsFromJson(json);
}
