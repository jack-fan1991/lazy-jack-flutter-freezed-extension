// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complex_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComplexJson _$ComplexJsonFromJson(Map<String, dynamic> json) {
  return _ComplexJson.fromJson(json);
}

/// @nodoc
mixin _$ComplexJson {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this ComplexJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplexJsonCopyWith<ComplexJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexJsonCopyWith<$Res> {
  factory $ComplexJsonCopyWith(
    ComplexJson value,
    $Res Function(ComplexJson) then,
  ) = _$ComplexJsonCopyWithImpl<$Res, ComplexJson>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ComplexJsonCopyWithImpl<$Res, $Val extends ComplexJson>
    implements $ComplexJsonCopyWith<$Res> {
  _$ComplexJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as Data,
          )
          as $Val,
    );
  }

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComplexJsonImplCopyWith<$Res>
    implements $ComplexJsonCopyWith<$Res> {
  factory _$$ComplexJsonImplCopyWith(
    _$ComplexJsonImpl value,
    $Res Function(_$ComplexJsonImpl) then,
  ) = __$$ComplexJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ComplexJsonImplCopyWithImpl<$Res>
    extends _$ComplexJsonCopyWithImpl<$Res, _$ComplexJsonImpl>
    implements _$$ComplexJsonImplCopyWith<$Res> {
  __$$ComplexJsonImplCopyWithImpl(
    _$ComplexJsonImpl _value,
    $Res Function(_$ComplexJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$ComplexJsonImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as Data,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplexJsonImpl extends _ComplexJson {
  const _$ComplexJsonImpl({required this.data}) : super._();

  factory _$ComplexJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplexJsonImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'ComplexJson(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexJsonImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplexJsonImplCopyWith<_$ComplexJsonImpl> get copyWith =>
      __$$ComplexJsonImplCopyWithImpl<_$ComplexJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplexJsonImplToJson(this);
  }
}

abstract class _ComplexJson extends ComplexJson {
  const factory _ComplexJson({required final Data data}) = _$ComplexJsonImpl;
  const _ComplexJson._() : super._();

  factory _ComplexJson.fromJson(Map<String, dynamic> json) =
      _$ComplexJsonImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of ComplexJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplexJsonImplCopyWith<_$ComplexJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Post get post => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _value.copyWith(
            post:
                null == post
                    ? _value.post
                    : post // ignore: cast_nullable_to_non_nullable
                        as Post,
          )
          as $Val,
    );
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
    _$DataImpl value,
    $Res Function(_$DataImpl) then,
  ) = __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
    : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _$DataImpl(
        post:
            null == post
                ? _value.post
                : post // ignore: cast_nullable_to_non_nullable
                    as Post,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl extends _Data {
  const _$DataImpl({required this.post}) : super._();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Post post;

  @override
  String toString() {
    return 'Data(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(this);
  }
}

abstract class _Data extends Data {
  const factory _Data({required final Post post}) = _$DataImpl;
  const _Data._() : super._();

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Post get post;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  Likes get likes => throw _privateConstructorUsedError;
  Tags get tags => throw _privateConstructorUsedError;
  Comments get comments => throw _privateConstructorUsedError;
  ContentBlocks get contentBlocks => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call({
    String id,
    String title,
    String content,
    String createdAt,
    Author author,
    Likes likes,
    Tags tags,
    Comments comments,
    ContentBlocks contentBlocks,
  });

  $AuthorCopyWith<$Res> get author;
  $LikesCopyWith<$Res> get likes;
  $TagsCopyWith<$Res> get tags;
  $CommentsCopyWith<$Res> get comments;
  $ContentBlocksCopyWith<$Res> get contentBlocks;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? author = null,
    Object? likes = null,
    Object? tags = null,
    Object? comments = null,
    Object? contentBlocks = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as Author,
            likes:
                null == likes
                    ? _value.likes
                    : likes // ignore: cast_nullable_to_non_nullable
                        as Likes,
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as Tags,
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as Comments,
            contentBlocks:
                null == contentBlocks
                    ? _value.contentBlocks
                    : contentBlocks // ignore: cast_nullable_to_non_nullable
                        as ContentBlocks,
          )
          as $Val,
    );
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikesCopyWith<$Res> get likes {
    return $LikesCopyWith<$Res>(_value.likes, (value) {
      return _then(_value.copyWith(likes: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res> get tags {
    return $TagsCopyWith<$Res>(_value.tags, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsCopyWith<$Res> get comments {
    return $CommentsCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentBlocksCopyWith<$Res> get contentBlocks {
    return $ContentBlocksCopyWith<$Res>(_value.contentBlocks, (value) {
      return _then(_value.copyWith(contentBlocks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
    _$PostImpl value,
    $Res Function(_$PostImpl) then,
  ) = __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String content,
    String createdAt,
    Author author,
    Likes likes,
    Tags tags,
    Comments comments,
    ContentBlocks contentBlocks,
  });

  @override
  $AuthorCopyWith<$Res> get author;
  @override
  $LikesCopyWith<$Res> get likes;
  @override
  $TagsCopyWith<$Res> get tags;
  @override
  $CommentsCopyWith<$Res> get comments;
  @override
  $ContentBlocksCopyWith<$Res> get contentBlocks;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
    : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? author = null,
    Object? likes = null,
    Object? tags = null,
    Object? comments = null,
    Object? contentBlocks = null,
  }) {
    return _then(
      _$PostImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as Author,
        likes:
            null == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                    as Likes,
        tags:
            null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as Tags,
        comments:
            null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as Comments,
        contentBlocks:
            null == contentBlocks
                ? _value.contentBlocks
                : contentBlocks // ignore: cast_nullable_to_non_nullable
                    as ContentBlocks,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  const _$PostImpl({
    this.id = '',
    this.title = '',
    this.content = '',
    this.createdAt = '',
    required this.author,
    required this.likes,
    required this.tags,
    required this.comments,
    required this.contentBlocks,
  }) : super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String createdAt;
  @override
  final Author author;
  @override
  final Likes likes;
  @override
  final Tags tags;
  @override
  final Comments comments;
  @override
  final ContentBlocks contentBlocks;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, createdAt: $createdAt, author: $author, likes: $likes, tags: $tags, comments: $comments, contentBlocks: $contentBlocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.contentBlocks, contentBlocks) ||
                other.contentBlocks == contentBlocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    content,
    createdAt,
    author,
    likes,
    tags,
    comments,
    contentBlocks,
  );

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(this);
  }
}

abstract class _Post extends Post {
  const factory _Post({
    final String id,
    final String title,
    final String content,
    final String createdAt,
    required final Author author,
    required final Likes likes,
    required final Tags tags,
    required final Comments comments,
    required final ContentBlocks contentBlocks,
  }) = _$PostImpl;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  Author get author;
  @override
  Likes get likes;
  @override
  Tags get tags;
  @override
  Comments get comments;
  @override
  ContentBlocks get contentBlocks;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  AuthorData get data => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({AuthorData data});

  $AuthorDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as AuthorData,
          )
          as $Val,
    );
  }

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorDataCopyWith<$Res> get data {
    return $AuthorDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
    _$AuthorImpl value,
    $Res Function(_$AuthorImpl) then,
  ) = __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthorData data});

  @override
  $AuthorDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
    _$AuthorImpl _value,
    $Res Function(_$AuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$AuthorImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as AuthorData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl extends _Author {
  const _$AuthorImpl({required this.data}) : super._();

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final AuthorData data;

  @override
  String toString() {
    return 'Author(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(this);
  }
}

abstract class _Author extends Author {
  const factory _Author({required final AuthorData data}) = _$AuthorImpl;
  const _Author._() : super._();

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  AuthorData get data;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorData _$AuthorDataFromJson(Map<String, dynamic> json) {
  return _AuthorData.fromJson(json);
}

/// @nodoc
mixin _$AuthorData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this AuthorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorDataCopyWith<AuthorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDataCopyWith<$Res> {
  factory $AuthorDataCopyWith(
    AuthorData value,
    $Res Function(AuthorData) then,
  ) = _$AuthorDataCopyWithImpl<$Res, AuthorData>;
  @useResult
  $Res call({String id, String name, String avatar, bool isVerified});
}

/// @nodoc
class _$AuthorDataCopyWithImpl<$Res, $Val extends AuthorData>
    implements $AuthorDataCopyWith<$Res> {
  _$AuthorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? isVerified = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            avatar:
                null == avatar
                    ? _value.avatar
                    : avatar // ignore: cast_nullable_to_non_nullable
                        as String,
            isVerified:
                null == isVerified
                    ? _value.isVerified
                    : isVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthorDataImplCopyWith<$Res>
    implements $AuthorDataCopyWith<$Res> {
  factory _$$AuthorDataImplCopyWith(
    _$AuthorDataImpl value,
    $Res Function(_$AuthorDataImpl) then,
  ) = __$$AuthorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String avatar, bool isVerified});
}

/// @nodoc
class __$$AuthorDataImplCopyWithImpl<$Res>
    extends _$AuthorDataCopyWithImpl<$Res, _$AuthorDataImpl>
    implements _$$AuthorDataImplCopyWith<$Res> {
  __$$AuthorDataImplCopyWithImpl(
    _$AuthorDataImpl _value,
    $Res Function(_$AuthorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? isVerified = null,
  }) {
    return _then(
      _$AuthorDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        avatar:
            null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                    as String,
        isVerified:
            null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorDataImpl extends _AuthorData {
  const _$AuthorDataImpl({
    this.id = '',
    this.name = '',
    this.avatar = '',
    this.isVerified = false,
  }) : super._();

  factory _$AuthorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final bool isVerified;

  @override
  String toString() {
    return 'AuthorData(id: $id, name: $name, avatar: $avatar, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, isVerified);

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorDataImplCopyWith<_$AuthorDataImpl> get copyWith =>
      __$$AuthorDataImplCopyWithImpl<_$AuthorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorDataImplToJson(this);
  }
}

abstract class _AuthorData extends AuthorData {
  const factory _AuthorData({
    final String id,
    final String name,
    final String avatar,
    final bool isVerified,
  }) = _$AuthorDataImpl;
  const _AuthorData._() : super._();

  factory _AuthorData.fromJson(Map<String, dynamic> json) =
      _$AuthorDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatar;
  @override
  bool get isVerified;

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorDataImplCopyWith<_$AuthorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Likes _$LikesFromJson(Map<String, dynamic> json) {
  return _Likes.fromJson(json);
}

/// @nodoc
mixin _$Likes {
  int get count => throw _privateConstructorUsedError;
  bool get userLiked => throw _privateConstructorUsedError;

  /// Serializes this Likes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Likes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikesCopyWith<Likes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesCopyWith<$Res> {
  factory $LikesCopyWith(Likes value, $Res Function(Likes) then) =
      _$LikesCopyWithImpl<$Res, Likes>;
  @useResult
  $Res call({int count, bool userLiked});
}

/// @nodoc
class _$LikesCopyWithImpl<$Res, $Val extends Likes>
    implements $LikesCopyWith<$Res> {
  _$LikesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Likes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null, Object? userLiked = null}) {
    return _then(
      _value.copyWith(
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            userLiked:
                null == userLiked
                    ? _value.userLiked
                    : userLiked // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LikesImplCopyWith<$Res> implements $LikesCopyWith<$Res> {
  factory _$$LikesImplCopyWith(
    _$LikesImpl value,
    $Res Function(_$LikesImpl) then,
  ) = __$$LikesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, bool userLiked});
}

/// @nodoc
class __$$LikesImplCopyWithImpl<$Res>
    extends _$LikesCopyWithImpl<$Res, _$LikesImpl>
    implements _$$LikesImplCopyWith<$Res> {
  __$$LikesImplCopyWithImpl(
    _$LikesImpl _value,
    $Res Function(_$LikesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Likes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null, Object? userLiked = null}) {
    return _then(
      _$LikesImpl(
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        userLiked:
            null == userLiked
                ? _value.userLiked
                : userLiked // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LikesImpl extends _Likes {
  const _$LikesImpl({this.count = 0, this.userLiked = false}) : super._();

  factory _$LikesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikesImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final bool userLiked;

  @override
  String toString() {
    return 'Likes(count: $count, userLiked: $userLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikesImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.userLiked, userLiked) ||
                other.userLiked == userLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, userLiked);

  /// Create a copy of Likes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesImplCopyWith<_$LikesImpl> get copyWith =>
      __$$LikesImplCopyWithImpl<_$LikesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikesImplToJson(this);
  }
}

abstract class _Likes extends Likes {
  const factory _Likes({final int count, final bool userLiked}) = _$LikesImpl;
  const _Likes._() : super._();

  factory _Likes.fromJson(Map<String, dynamic> json) = _$LikesImpl.fromJson;

  @override
  int get count;
  @override
  bool get userLiked;

  /// Create a copy of Likes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikesImplCopyWith<_$LikesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return _Tags.fromJson(json);
}

/// @nodoc
mixin _$Tags {
  List<String> get data => throw _privateConstructorUsedError;

  /// Serializes this Tags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagsCopyWith<Tags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<$Res> {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) then) =
      _$TagsCopyWithImpl<$Res, Tags>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class _$TagsCopyWithImpl<$Res, $Val extends Tags>
    implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TagsImplCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$$TagsImplCopyWith(
    _$TagsImpl value,
    $Res Function(_$TagsImpl) then,
  ) = __$$TagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$TagsImplCopyWithImpl<$Res>
    extends _$TagsCopyWithImpl<$Res, _$TagsImpl>
    implements _$$TagsImplCopyWith<$Res> {
  __$$TagsImplCopyWithImpl(_$TagsImpl _value, $Res Function(_$TagsImpl) _then)
    : super(_value, _then);

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$TagsImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TagsImpl extends _Tags {
  const _$TagsImpl({final List<String> data = const []})
    : _data = data,
      super._();

  factory _$TagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsImplFromJson(json);

  final List<String> _data;
  @override
  @JsonKey()
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Tags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsImplCopyWith<_$TagsImpl> get copyWith =>
      __$$TagsImplCopyWithImpl<_$TagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsImplToJson(this);
  }
}

abstract class _Tags extends Tags {
  const factory _Tags({final List<String> data}) = _$TagsImpl;
  const _Tags._() : super._();

  factory _Tags.fromJson(Map<String, dynamic> json) = _$TagsImpl.fromJson;

  @override
  List<String> get data;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagsImplCopyWith<_$TagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
mixin _$Comments {
  List<CommentsData> get data => throw _privateConstructorUsedError;

  /// Serializes this Comments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsCopyWith<Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res, Comments>;
  @useResult
  $Res call({List<CommentsData> data});
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res, $Val extends Comments>
    implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<CommentsData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsImplCopyWith<$Res>
    implements $CommentsCopyWith<$Res> {
  factory _$$CommentsImplCopyWith(
    _$CommentsImpl value,
    $Res Function(_$CommentsImpl) then,
  ) = __$$CommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsData> data});
}

/// @nodoc
class __$$CommentsImplCopyWithImpl<$Res>
    extends _$CommentsCopyWithImpl<$Res, _$CommentsImpl>
    implements _$$CommentsImplCopyWith<$Res> {
  __$$CommentsImplCopyWithImpl(
    _$CommentsImpl _value,
    $Res Function(_$CommentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Comments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsImpl extends _Comments {
  const _$CommentsImpl({final List<CommentsData> data = const []})
    : _data = data,
      super._();

  factory _$CommentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsImplFromJson(json);

  final List<CommentsData> _data;
  @override
  @JsonKey()
  List<CommentsData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Comments(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Comments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsImplCopyWith<_$CommentsImpl> get copyWith =>
      __$$CommentsImplCopyWithImpl<_$CommentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsImplToJson(this);
  }
}

abstract class _Comments extends Comments {
  const factory _Comments({final List<CommentsData> data}) = _$CommentsImpl;
  const _Comments._() : super._();

  factory _Comments.fromJson(Map<String, dynamic> json) =
      _$CommentsImpl.fromJson;

  @override
  List<CommentsData> get data;

  /// Create a copy of Comments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsImplCopyWith<_$CommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsData _$CommentsDataFromJson(Map<String, dynamic> json) {
  return _CommentsData.fromJson(json);
}

/// @nodoc
mixin _$CommentsData {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  CommentsDataAuthor get author => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CommentsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDataCopyWith<CommentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDataCopyWith<$Res> {
  factory $CommentsDataCopyWith(
    CommentsData value,
    $Res Function(CommentsData) then,
  ) = _$CommentsDataCopyWithImpl<$Res, CommentsData>;
  @useResult
  $Res call({
    String id,
    String content,
    CommentsDataAuthor author,
    String createdAt,
  });

  $CommentsDataAuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$CommentsDataCopyWithImpl<$Res, $Val extends CommentsData>
    implements $CommentsDataCopyWith<$Res> {
  _$CommentsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as CommentsDataAuthor,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsDataAuthorCopyWith<$Res> get author {
    return $CommentsDataAuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsDataImplCopyWith<$Res>
    implements $CommentsDataCopyWith<$Res> {
  factory _$$CommentsDataImplCopyWith(
    _$CommentsDataImpl value,
    $Res Function(_$CommentsDataImpl) then,
  ) = __$$CommentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String content,
    CommentsDataAuthor author,
    String createdAt,
  });

  @override
  $CommentsDataAuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$CommentsDataImplCopyWithImpl<$Res>
    extends _$CommentsDataCopyWithImpl<$Res, _$CommentsDataImpl>
    implements _$$CommentsDataImplCopyWith<$Res> {
  __$$CommentsDataImplCopyWithImpl(
    _$CommentsDataImpl _value,
    $Res Function(_$CommentsDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$CommentsDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as CommentsDataAuthor,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDataImpl extends _CommentsData {
  const _$CommentsDataImpl({
    this.id = '',
    this.content = '',
    required this.author,
    this.createdAt = '',
  }) : super._();

  factory _$CommentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String content;
  @override
  final CommentsDataAuthor author;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'CommentsData(id: $id, content: $content, author: $author, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, author, createdAt);

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDataImplCopyWith<_$CommentsDataImpl> get copyWith =>
      __$$CommentsDataImplCopyWithImpl<_$CommentsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDataImplToJson(this);
  }
}

abstract class _CommentsData extends CommentsData {
  const factory _CommentsData({
    final String id,
    final String content,
    required final CommentsDataAuthor author,
    final String createdAt,
  }) = _$CommentsDataImpl;
  const _CommentsData._() : super._();

  factory _CommentsData.fromJson(Map<String, dynamic> json) =
      _$CommentsDataImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  CommentsDataAuthor get author;
  @override
  String get createdAt;

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDataImplCopyWith<_$CommentsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsDataAuthor _$CommentsDataAuthorFromJson(Map<String, dynamic> json) {
  return _CommentsDataAuthor.fromJson(json);
}

/// @nodoc
mixin _$CommentsDataAuthor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CommentsDataAuthor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDataAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDataAuthorCopyWith<CommentsDataAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDataAuthorCopyWith<$Res> {
  factory $CommentsDataAuthorCopyWith(
    CommentsDataAuthor value,
    $Res Function(CommentsDataAuthor) then,
  ) = _$CommentsDataAuthorCopyWithImpl<$Res, CommentsDataAuthor>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CommentsDataAuthorCopyWithImpl<$Res, $Val extends CommentsDataAuthor>
    implements $CommentsDataAuthorCopyWith<$Res> {
  _$CommentsDataAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDataAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsDataAuthorImplCopyWith<$Res>
    implements $CommentsDataAuthorCopyWith<$Res> {
  factory _$$CommentsDataAuthorImplCopyWith(
    _$CommentsDataAuthorImpl value,
    $Res Function(_$CommentsDataAuthorImpl) then,
  ) = __$$CommentsDataAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$CommentsDataAuthorImplCopyWithImpl<$Res>
    extends _$CommentsDataAuthorCopyWithImpl<$Res, _$CommentsDataAuthorImpl>
    implements _$$CommentsDataAuthorImplCopyWith<$Res> {
  __$$CommentsDataAuthorImplCopyWithImpl(
    _$CommentsDataAuthorImpl _value,
    $Res Function(_$CommentsDataAuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDataAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$CommentsDataAuthorImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDataAuthorImpl extends _CommentsDataAuthor {
  const _$CommentsDataAuthorImpl({this.id = '', this.name = ''}) : super._();

  factory _$CommentsDataAuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDataAuthorImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CommentsDataAuthor(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDataAuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CommentsDataAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDataAuthorImplCopyWith<_$CommentsDataAuthorImpl> get copyWith =>
      __$$CommentsDataAuthorImplCopyWithImpl<_$CommentsDataAuthorImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDataAuthorImplToJson(this);
  }
}

abstract class _CommentsDataAuthor extends CommentsDataAuthor {
  const factory _CommentsDataAuthor({final String id, final String name}) =
      _$CommentsDataAuthorImpl;
  const _CommentsDataAuthor._() : super._();

  factory _CommentsDataAuthor.fromJson(Map<String, dynamic> json) =
      _$CommentsDataAuthorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of CommentsDataAuthor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDataAuthorImplCopyWith<_$CommentsDataAuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentBlocks _$ContentBlocksFromJson(Map<String, dynamic> json) {
  return _ContentBlocks.fromJson(json);
}

/// @nodoc
mixin _$ContentBlocks {
  List<ContentBlocksData> get data => throw _privateConstructorUsedError;

  /// Serializes this ContentBlocks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentBlocks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentBlocksCopyWith<ContentBlocks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBlocksCopyWith<$Res> {
  factory $ContentBlocksCopyWith(
    ContentBlocks value,
    $Res Function(ContentBlocks) then,
  ) = _$ContentBlocksCopyWithImpl<$Res, ContentBlocks>;
  @useResult
  $Res call({List<ContentBlocksData> data});
}

/// @nodoc
class _$ContentBlocksCopyWithImpl<$Res, $Val extends ContentBlocks>
    implements $ContentBlocksCopyWith<$Res> {
  _$ContentBlocksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentBlocks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<ContentBlocksData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentBlocksImplCopyWith<$Res>
    implements $ContentBlocksCopyWith<$Res> {
  factory _$$ContentBlocksImplCopyWith(
    _$ContentBlocksImpl value,
    $Res Function(_$ContentBlocksImpl) then,
  ) = __$$ContentBlocksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContentBlocksData> data});
}

/// @nodoc
class __$$ContentBlocksImplCopyWithImpl<$Res>
    extends _$ContentBlocksCopyWithImpl<$Res, _$ContentBlocksImpl>
    implements _$$ContentBlocksImplCopyWith<$Res> {
  __$$ContentBlocksImplCopyWithImpl(
    _$ContentBlocksImpl _value,
    $Res Function(_$ContentBlocksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentBlocks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$ContentBlocksImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<ContentBlocksData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentBlocksImpl extends _ContentBlocks {
  const _$ContentBlocksImpl({final List<ContentBlocksData> data = const []})
    : _data = data,
      super._();

  factory _$ContentBlocksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentBlocksImplFromJson(json);

  final List<ContentBlocksData> _data;
  @override
  @JsonKey()
  List<ContentBlocksData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ContentBlocks(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentBlocksImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ContentBlocks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentBlocksImplCopyWith<_$ContentBlocksImpl> get copyWith =>
      __$$ContentBlocksImplCopyWithImpl<_$ContentBlocksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentBlocksImplToJson(this);
  }
}

abstract class _ContentBlocks extends ContentBlocks {
  const factory _ContentBlocks({final List<ContentBlocksData> data}) =
      _$ContentBlocksImpl;
  const _ContentBlocks._() : super._();

  factory _ContentBlocks.fromJson(Map<String, dynamic> json) =
      _$ContentBlocksImpl.fromJson;

  @override
  List<ContentBlocksData> get data;

  /// Create a copy of ContentBlocks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentBlocksImplCopyWith<_$ContentBlocksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentBlocksData _$ContentBlocksDataFromJson(Map<String, dynamic> json) {
  return _ContentBlocksData.fromJson(json);
}

/// @nodoc
mixin _$ContentBlocksData {
  String? get type => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  /// Serializes this ContentBlocksData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentBlocksData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentBlocksDataCopyWith<ContentBlocksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBlocksDataCopyWith<$Res> {
  factory $ContentBlocksDataCopyWith(
    ContentBlocksData value,
    $Res Function(ContentBlocksData) then,
  ) = _$ContentBlocksDataCopyWithImpl<$Res, ContentBlocksData>;
  @useResult
  $Res call({
    String? type,
    String? text,
    String url,
    String? caption,
    int? duration,
  });
}

/// @nodoc
class _$ContentBlocksDataCopyWithImpl<$Res, $Val extends ContentBlocksData>
    implements $ContentBlocksDataCopyWith<$Res> {
  _$ContentBlocksDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentBlocksData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? url = null,
    Object? caption = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _value.copyWith(
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            text:
                freezed == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            caption:
                freezed == caption
                    ? _value.caption
                    : caption // ignore: cast_nullable_to_non_nullable
                        as String?,
            duration:
                freezed == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentBlocksDataImplCopyWith<$Res>
    implements $ContentBlocksDataCopyWith<$Res> {
  factory _$$ContentBlocksDataImplCopyWith(
    _$ContentBlocksDataImpl value,
    $Res Function(_$ContentBlocksDataImpl) then,
  ) = __$$ContentBlocksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? type,
    String? text,
    String url,
    String? caption,
    int? duration,
  });
}

/// @nodoc
class __$$ContentBlocksDataImplCopyWithImpl<$Res>
    extends _$ContentBlocksDataCopyWithImpl<$Res, _$ContentBlocksDataImpl>
    implements _$$ContentBlocksDataImplCopyWith<$Res> {
  __$$ContentBlocksDataImplCopyWithImpl(
    _$ContentBlocksDataImpl _value,
    $Res Function(_$ContentBlocksDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentBlocksData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? url = null,
    Object? caption = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _$ContentBlocksDataImpl(
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        text:
            freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        caption:
            freezed == caption
                ? _value.caption
                : caption // ignore: cast_nullable_to_non_nullable
                    as String?,
        duration:
            freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentBlocksDataImpl extends _ContentBlocksData {
  const _$ContentBlocksDataImpl({
    this.type = '',
    this.text = '',
    this.url = '',
    this.caption = '',
    this.duration = 0,
  }) : super._();

  factory _$ContentBlocksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentBlocksDataImplFromJson(json);

  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String? caption;
  @override
  @JsonKey()
  final int? duration;

  @override
  String toString() {
    return 'ContentBlocksData(type: $type, text: $text, url: $url, caption: $caption, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentBlocksDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, text, url, caption, duration);

  /// Create a copy of ContentBlocksData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentBlocksDataImplCopyWith<_$ContentBlocksDataImpl> get copyWith =>
      __$$ContentBlocksDataImplCopyWithImpl<_$ContentBlocksDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentBlocksDataImplToJson(this);
  }
}

abstract class _ContentBlocksData extends ContentBlocksData {
  const factory _ContentBlocksData({
    final String? type,
    final String? text,
    final String url,
    final String? caption,
    final int? duration,
  }) = _$ContentBlocksDataImpl;
  const _ContentBlocksData._() : super._();

  factory _ContentBlocksData.fromJson(Map<String, dynamic> json) =
      _$ContentBlocksDataImpl.fromJson;

  @override
  String? get type;
  @override
  String? get text;
  @override
  String get url;
  @override
  String? get caption;
  @override
  int? get duration;

  /// Create a copy of ContentBlocksData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentBlocksDataImplCopyWith<_$ContentBlocksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
