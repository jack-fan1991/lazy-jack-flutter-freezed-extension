import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_tag_dynamic_resp.g.dart';
part 'comments_tag_dynamic_resp.freezed.dart';

@freezed
class CommentsTagDynamicResp with _$CommentsTagDynamicResp {
  const CommentsTagDynamicResp._();
  const factory CommentsTagDynamicResp({
    required final CommentsTagDynamicRespCommentsTags commentsTags,
  }) = _CommentsTagDynamicResp;
  factory CommentsTagDynamicResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagDynamicRespFromJson(json);
}

@freezed
class CommentsTagDynamicRespCommentsTags
    with _$CommentsTagDynamicRespCommentsTags {
  const CommentsTagDynamicRespCommentsTags._();
  const factory CommentsTagDynamicRespCommentsTags({
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> data,
  }) = _CommentsTagDynamicRespCommentsTags;
  factory CommentsTagDynamicRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) => _$CommentsTagDynamicRespCommentsTagsFromJson(json);
}
