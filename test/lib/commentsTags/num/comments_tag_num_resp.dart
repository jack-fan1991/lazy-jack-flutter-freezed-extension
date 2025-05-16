import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_tag_num_resp.g.dart';
part 'comments_tag_num_resp.freezed.dart';

@freezed
class CommentsTagNumResp with _$CommentsTagNumResp {
  const CommentsTagNumResp._();
  const factory CommentsTagNumResp({
    required final CommentsTagNumRespCommentsTags commentsTags,
  }) = _CommentsTagNumResp;
  factory CommentsTagNumResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagNumRespFromJson(json);
}

@freezed
class CommentsTagNumRespCommentsTags with _$CommentsTagNumRespCommentsTags {
  const CommentsTagNumRespCommentsTags._();
  const factory CommentsTagNumRespCommentsTags({
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> data,
  }) = _CommentsTagNumRespCommentsTags;
  factory CommentsTagNumRespCommentsTags.fromJson(Map<String, dynamic> json) =>
      _$CommentsTagNumRespCommentsTagsFromJson(json);
}
