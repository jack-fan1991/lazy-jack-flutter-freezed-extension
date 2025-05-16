// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_tag_int_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsTagIntRespImpl _$$CommentsTagIntRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsTagIntRespImpl(
  commentsTags: CommentsTagIntRespCommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsTagIntRespImplToJson(
  _$CommentsTagIntRespImpl instance,
) => <String, dynamic>{'commentsTags': instance.commentsTags};

_$CommentsTagIntRespCommentsTagsImpl
_$$CommentsTagIntRespCommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagIntRespCommentsTagsImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsTagIntRespCommentsTagsImplToJson(
  _$CommentsTagIntRespCommentsTagsImpl instance,
) => <String, dynamic>{'data': instance.data};
