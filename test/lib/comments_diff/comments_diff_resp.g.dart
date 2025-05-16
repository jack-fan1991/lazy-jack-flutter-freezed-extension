// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_diff_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsDiffRespImpl _$$CommentsDiffRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsDiffRespImpl(
  commentsDiff: CommentsDiffRespCommentsDiff.fromJson(
    json['commentsDiff'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsDiffRespImplToJson(
  _$CommentsDiffRespImpl instance,
) => <String, dynamic>{'commentsDiff': instance.commentsDiff};

_$CommentsDiffRespCommentsDiffImpl _$$CommentsDiffRespCommentsDiffImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsDiffRespCommentsDiffImpl(
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => CommentsDiffRespCommentsDiffData.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CommentsDiffRespCommentsDiffImplToJson(
  _$CommentsDiffRespCommentsDiffImpl instance,
) => <String, dynamic>{'data': instance.data};

_$CommentsDiffRespCommentsDiffDataImpl
_$$CommentsDiffRespCommentsDiffDataImplFromJson(Map<String, dynamic> json) =>
    _$CommentsDiffRespCommentsDiffDataImpl(
      status: json['status'] as String? ?? '',
      content: json['content'] as String? ?? '',
      contentDiff: json['contentDiff'] as String? ?? '',
      nullAble: json['nullAble'] as String? ?? '',
    );

Map<String, dynamic> _$$CommentsDiffRespCommentsDiffDataImplToJson(
  _$CommentsDiffRespCommentsDiffDataImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'content': instance.content,
  'contentDiff': instance.contentDiff,
  'nullAble': instance.nullAble,
};
