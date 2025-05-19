// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsRespImpl _$$CommentsRespImplFromJson(Map<String, dynamic> json) =>
    _$CommentsRespImpl(
      comments: Comments.fromJson(json['comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentsRespImplToJson(_$CommentsRespImpl instance) =>
    <String, dynamic>{'comments': instance.comments};

_$CommentsImpl _$$CommentsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsImplToJson(_$CommentsImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) =>
    _$DataImpl(content: json['content'] as String? ?? '');

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{'content': instance.content};
