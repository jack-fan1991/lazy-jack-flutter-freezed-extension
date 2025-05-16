import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_resp.g.dart';
part 'comments_resp.freezed.dart';

@freezed
class CommentsResp with _$CommentsResp {
	const CommentsResp._();
	const factory CommentsResp({
		  required final CommentsRespComments comments,
	}) = _CommentsResp;
	factory CommentsResp.fromJson(Map<String, dynamic> json) => _$CommentsRespFromJson(json);
}

@freezed
class CommentsRespComments with _$CommentsRespComments {
	const CommentsRespComments._();
	const factory CommentsRespComments({
		@Default([]) final List<CommentsRespCommentsData> data,
	}) = _CommentsRespComments;
	factory CommentsRespComments.fromJson(Map<String, dynamic> json) => _$CommentsRespCommentsFromJson(json);
}

@freezed
class CommentsRespCommentsData with _$CommentsRespCommentsData {
	const CommentsRespCommentsData._();
	const factory CommentsRespCommentsData({
		 @Default('') final String content,
	}) = _CommentsRespCommentsData;
	factory CommentsRespCommentsData.fromJson(Map<String, dynamic> json) => _$CommentsRespCommentsDataFromJson(json);
}