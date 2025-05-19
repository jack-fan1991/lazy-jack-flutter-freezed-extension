// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplexJsonImpl _$$ComplexJsonImplFromJson(Map<String, dynamic> json) =>
    _$ComplexJsonImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ComplexJsonImplToJson(_$ComplexJsonImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) =>
    _$DataImpl(post: Post.fromJson(json['post'] as Map<String, dynamic>));

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{'post': instance.post};

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  content: json['content'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
  author: Author.fromJson(json['author'] as Map<String, dynamic>),
  likes: Likes.fromJson(json['likes'] as Map<String, dynamic>),
  tags: Tags.fromJson(json['tags'] as Map<String, dynamic>),
  comments: Comments.fromJson(json['comments'] as Map<String, dynamic>),
  contentBlocks: ContentBlocks.fromJson(
    json['contentBlocks'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'author': instance.author,
      'likes': instance.likes,
      'tags': instance.tags,
      'comments': instance.comments,
      'contentBlocks': instance.contentBlocks,
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
      avatar: json['avatar'] as String? ?? '',
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthorDataImplToJson(_$AuthorDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'isVerified': instance.isVerified,
    };

_$LikesImpl _$$LikesImplFromJson(Map<String, dynamic> json) => _$LikesImpl(
  count: (json['count'] as num?)?.toInt() ?? 0,
  userLiked: json['userLiked'] as bool? ?? false,
);

Map<String, dynamic> _$$LikesImplToJson(_$LikesImpl instance) =>
    <String, dynamic>{'count': instance.count, 'userLiked': instance.userLiked};

_$TagsImpl _$$TagsImplFromJson(Map<String, dynamic> json) => _$TagsImpl(
  data:
      (json['data'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$TagsImplToJson(_$TagsImpl instance) =>
    <String, dynamic>{'data': instance.data};

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
    _$CommentsDataImpl(
      id: json['id'] as String? ?? '',
      content: json['content'] as String? ?? '',
      author: CommentsDataAuthor.fromJson(
        json['author'] as Map<String, dynamic>,
      ),
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$CommentsDataImplToJson(_$CommentsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'author': instance.author,
      'createdAt': instance.createdAt,
    };

_$CommentsDataAuthorImpl _$$CommentsDataAuthorImplFromJson(
  Map<String, dynamic> json,
) => _$CommentsDataAuthorImpl(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
);

Map<String, dynamic> _$$CommentsDataAuthorImplToJson(
  _$CommentsDataAuthorImpl instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_$ContentBlocksImpl _$$ContentBlocksImplFromJson(Map<String, dynamic> json) =>
    _$ContentBlocksImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => ContentBlocksData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ContentBlocksImplToJson(_$ContentBlocksImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$ContentBlocksDataImpl _$$ContentBlocksDataImplFromJson(
  Map<String, dynamic> json,
) => _$ContentBlocksDataImpl(
  type: json['type'] as String? ?? '',
  text: json['text'] as String? ?? '',
  url: json['url'] as String? ?? '',
  caption: json['caption'] as String? ?? '',
  duration: (json['duration'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ContentBlocksDataImplToJson(
  _$ContentBlocksDataImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'text': instance.text,
  'url': instance.url,
  'caption': instance.caption,
  'duration': instance.duration,
};
