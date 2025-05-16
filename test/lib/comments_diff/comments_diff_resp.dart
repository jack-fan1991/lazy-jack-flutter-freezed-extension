import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_diff_resp.g.dart';
part 'comments_diff_resp.freezed.dart';

@freezed
class CommentsDiffResp with _$CommentsDiffResp {
  const CommentsDiffResp._();
  const factory CommentsDiffResp({
    required final CommentsDiffRespCommentsDiff commentsDiff,
  }) = _CommentsDiffResp;
  factory CommentsDiffResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsDiffRespFromJson(json);
}

@freezed
class CommentsDiffRespCommentsDiff with _$CommentsDiffRespCommentsDiff {
  const CommentsDiffRespCommentsDiff._();
  const factory CommentsDiffRespCommentsDiff({
    @Default([]) final List<CommentsDiffRespCommentsDiffData> data,
  }) = _CommentsDiffRespCommentsDiff;
  factory CommentsDiffRespCommentsDiff.fromJson(Map<String, dynamic> json) =>
      _$CommentsDiffRespCommentsDiffFromJson(json);
}

@freezed
class CommentsDiffRespCommentsDiffData with _$CommentsDiffRespCommentsDiffData {
  const CommentsDiffRespCommentsDiffData._();
  const factory CommentsDiffRespCommentsDiffData({
    @Default('') final String status,
    @Default('') final String? content,
    @Default('') final String? contentDiff,
    @Default('') final String? nullAble,
  }) = _CommentsDiffRespCommentsDiffData;
  factory CommentsDiffRespCommentsDiffData.fromJson(
    Map<String, dynamic> json,
  ) => _$CommentsDiffRespCommentsDiffDataFromJson(json);
}
