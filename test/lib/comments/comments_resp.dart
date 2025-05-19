import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_resp.g.dart';
part 'comments_resp.freezed.dart';

@freezed
class CommentsResp with _$CommentsResp {
  const CommentsResp._();
  const factory CommentsResp({required final Comments comments}) =
      _CommentsResp;
  factory CommentsResp.fromJson(Map<String, dynamic> json) =>
      _$CommentsRespFromJson(json);
}

@freezed
class Comments with _$Comments {
  const Comments._();
  const factory Comments({@Default([]) final List<Data> data}) = _Comments;
  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}

@freezed
class Data with _$Data {
  const Data._();
  const factory Data({@Default('') final String content}) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
