// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nest_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NestJsonImpl _$$NestJsonImplFromJson(Map<String, dynamic> json) =>
    _$NestJsonImpl(data: Data.fromJson(json['data'] as Map<String, dynamic>));

Map<String, dynamic> _$$NestJsonImplToJson(_$NestJsonImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) =>
    _$DataImpl(post: Post.fromJson(json['post'] as Map<String, dynamic>));

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{'post': instance.post};

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
  title: json['title'] as String? ?? '',
  author: Author.fromJson(json['author'] as Map<String, dynamic>),
  comments: Comments.fromJson(json['comments'] as Map<String, dynamic>),
  commentsDiff: CommentsDiff.fromJson(
    json['commentsDiff'] as Map<String, dynamic>,
  ),
  commentsTags: CommentsTags.fromJson(
    json['commentsTags'] as Map<String, dynamic>,
  ),
  commentsValues: CommentsValues.fromJson(
    json['commentsValues'] as Map<String, dynamic>,
  ),
  commentsObj: CommentsObj.fromJson(
    json['commentsObj'] as Map<String, dynamic>,
  ),
  commentsMultiObj: CommentsMultiObj.fromJson(
    json['commentsMultiObj'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'comments': instance.comments,
      'commentsDiff': instance.commentsDiff,
      'commentsTags': instance.commentsTags,
      'commentsValues': instance.commentsValues,
      'commentsObj': instance.commentsObj,
      'commentsMultiObj': instance.commentsMultiObj,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
  data: AuthorData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$AuthorDataImpl _$$AuthorDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthorDataImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthorDataImplToJson(_$AuthorDataImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$CommentsImpl _$$CommentsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CommentsData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsImplToJson(_$CommentsImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$CommentsDataImpl _$$CommentsDataImplFromJson(Map<String, dynamic> json) =>
    _$CommentsDataImpl(content: json['content'] as String? ?? '');

Map<String, dynamic> _$$CommentsDataImplToJson(_$CommentsDataImpl instance) =>
    <String, dynamic>{'content': instance.content};

_$CommentsDiffImpl _$$CommentsDiffImplFromJson(Map<String, dynamic> json) =>
    _$CommentsDiffImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CommentsDiffData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsDiffImplToJson(_$CommentsDiffImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$CommentsDiffDataImpl _$$CommentsDiffDataImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsDiffDataImpl(
  status: json['status'] as String? ?? '',
  content: json['content'] as String? ?? '',
  contentDiff: json['contentDiff'] as String? ?? '',
);

Map<String, dynamic> _$$CommentsDiffDataImplToJson(
  _$CommentsDiffDataImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'content': instance.content,
  'contentDiff': instance.contentDiff,
};

_$CommentsTagsImpl _$$CommentsTagsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsTagsImpl(
      data:
          (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsTagsImplToJson(_$CommentsTagsImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$CommentsValuesImpl _$$CommentsValuesImplFromJson(Map<String, dynamic> json) =>
    _$CommentsValuesImpl(data: json['data'] as List<dynamic>? ?? const []);

Map<String, dynamic> _$$CommentsValuesImplToJson(
  _$CommentsValuesImpl instance,
) => <String, dynamic>{'data': instance.data};

_$CommentsObjImpl _$$CommentsObjImplFromJson(Map<String, dynamic> json) =>
    _$CommentsObjImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CommentsObjData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentsObjImplToJson(_$CommentsObjImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$CommentsObjDataImpl _$$CommentsObjDataImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsObjDataImpl(
  content: json['content'] as String? ?? '',
  author: json['author'] as String? ?? '',
);

Map<String, dynamic> _$$CommentsObjDataImplToJson(
  _$CommentsObjDataImpl instance,
) => <String, dynamic>{'content': instance.content, 'author': instance.author};

_$CommentsMultiObjImpl _$$CommentsMultiObjImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsMultiObjImpl(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CommentsMultiObjData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CommentsMultiObjImplToJson(
  _$CommentsMultiObjImpl instance,
) => <String, dynamic>{'data': instance.data};

_$CommentsMultiObjDataImpl _$$CommentsMultiObjDataImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsMultiObjDataImpl(
  type: json['type'] as String? ?? '',
  content: json['content'] as String? ?? '',
  url: json['url'] as String? ?? '',
  width: (json['width'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$CommentsMultiObjDataImplToJson(
  _$CommentsMultiObjDataImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'content': instance.content,
  'url': instance.url,
  'width': instance.width,
};
