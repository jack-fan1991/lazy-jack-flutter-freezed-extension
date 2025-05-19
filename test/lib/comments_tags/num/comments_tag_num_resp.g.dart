// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_tag_num_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsTagNumRespImpl _$$CommentsTagNumRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsTagNumRespImpl(
  commentsTags: CommentsTagNumRespCommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsTagNumRespImplToJson(
  _$CommentsTagNumRespImpl instance,
) => <String, dynamic>{'commentsTags': instance.commentsTags};

_$CommentsTagNumRespCommentsTagsImpl
_$$CommentsTagNumRespCommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagNumRespCommentsTagsImpl(
      data: json['data'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$CommentsTagNumRespCommentsTagsImplToJson(
  _$CommentsTagNumRespCommentsTagsImpl instance,
) => <String, dynamic>{'data': instance.data};
