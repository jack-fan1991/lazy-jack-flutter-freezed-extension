// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_tag_dynamic_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsTagDynamicRespImpl _$$CommentsTagDynamicRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsTagDynamicRespImpl(
  commentsTags: CommentsTagDynamicRespCommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsTagDynamicRespImplToJson(
  _$CommentsTagDynamicRespImpl instance,
) => <String, dynamic>{'commentsTags': instance.commentsTags};

_$CommentsTagDynamicRespCommentsTagsImpl
_$$CommentsTagDynamicRespCommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagDynamicRespCommentsTagsImpl(
      data: json['data'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$CommentsTagDynamicRespCommentsTagsImplToJson(
  _$CommentsTagDynamicRespCommentsTagsImpl instance,
) => <String, dynamic>{'data': instance.data};
