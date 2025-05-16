// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsRespImpl _$$CommentsRespImplFromJson(Map<String, dynamic> json) =>
    _$CommentsRespImpl(
      comments: CommentsRespComments.fromJson(
        json['comments'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CommentsRespImplToJson(_$CommentsRespImpl instance) =>
    <String, dynamic>{'comments': instance.comments};

_$CommentsRespCommentsImpl _$$CommentsRespCommentsImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsRespCommentsImpl(
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => CommentsRespCommentsData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CommentsRespCommentsImplToJson(
  _$CommentsRespCommentsImpl instance,
) => <String, dynamic>{'data': instance.data};

_$CommentsRespCommentsDataImpl _$$CommentsRespCommentsDataImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsRespCommentsDataImpl(content: json['content'] as String? ?? '');

Map<String, dynamic> _$$CommentsRespCommentsDataImplToJson(
  _$CommentsRespCommentsDataImpl instance,
) => <String, dynamic>{'content': instance.content};
