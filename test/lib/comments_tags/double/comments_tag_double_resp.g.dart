// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_tag_double_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsTagDoubleRespImpl _$$CommentsTagDoubleRespImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsTagDoubleRespImpl(
  commentsTags: CommentsTagDoubleRespCommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$CommentsTagDoubleRespImplToJson(
  _$CommentsTagDoubleRespImpl instance,
) => <String, dynamic>{'commentsTags': instance.commentsTags};

_$CommentsTagDoubleRespCommentsTagsImpl
_$$CommentsTagDoubleRespCommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagDoubleRespCommentsTagsImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsTagDoubleRespCommentsTagsImplToJson(
  _$CommentsTagDoubleRespCommentsTagsImpl instance,
) => <String, dynamic>{'data': instance.data};
