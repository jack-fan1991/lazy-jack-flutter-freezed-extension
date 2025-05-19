// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_tag_string_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsTagStringRespImpl _$$CommentsTagStringRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsTagStringRespImpl(
  commentsTags: CommentsTagStringRespCommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsTagStringRespImplToJson(
  _$CommentsTagStringRespImpl instance,
) => <String, dynamic>{'commentsTags': instance.commentsTags};

_$CommentsTagStringRespCommentsTagsImpl
_$$CommentsTagStringRespCommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagStringRespCommentsTagsImpl(
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsTagStringRespCommentsTagsImplToJson(
  _$CommentsTagStringRespCommentsTagsImpl instance,
) => <String, dynamic>{'data': instance.data};
