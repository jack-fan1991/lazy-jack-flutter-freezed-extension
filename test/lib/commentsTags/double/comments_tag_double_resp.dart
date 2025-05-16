import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_tag_double_resp.g.dart';
part 'comments_tag_double_resp.freezed.dart';

@freezed
class CommentsTagDoubleResp with _$CommentsTagDoubleResp {
  const CommentsTagDoubleResp._();
  const factory CommentsTagDoubleResp({
    required final CommentsTagDoubleRespCommentsTags commentsTags,
  }) = _CommentsTagDoubleResp;
  factory CommentsTagDoubleResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagDoubleRespFromJson(json);
}

@freezed
class CommentsTagDoubleRespCommentsTags
    with _$CommentsTagDoubleRespCommentsTags {
  const CommentsTagDoubleRespCommentsTags._();
  const factory CommentsTagDoubleRespCommentsTags({
    @Default([]) final List<double> data,
  }) = _CommentsTagDoubleRespCommentsTags;
  factory CommentsTagDoubleRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) => _$CommentsTagDoubleRespCommentsTagsFromJson(json);
}
