// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nest_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NestJson _$NestJsonFromJson(Map<String, dynamic> json) {
  return _NestJson.fromJson(json);
}

/// @nodoc
mixin _$NestJson {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this NestJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NestJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NestJsonCopyWith<NestJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestJsonCopyWith<$Res> {
  factory $NestJsonCopyWith(NestJson value, $Res Function(NestJson) then) =
      _$NestJsonCopyWithImpl<$Res, NestJson>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$NestJsonCopyWithImpl<$Res, $Val extends NestJson>
    implements $NestJsonCopyWith<$Res> {
  _$NestJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NestJson
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

  /// Create a copy of NestJson
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
abstract class _$$NestJsonImplCopyWith<$Res>
    implements $NestJsonCopyWith<$Res> {
  factory _$$NestJsonImplCopyWith(
    _$NestJsonImpl value,
    $Res Function(_$NestJsonImpl) then,
  ) = __$$NestJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NestJsonImplCopyWithImpl<$Res>
    extends _$NestJsonCopyWithImpl<$Res, _$NestJsonImpl>
    implements _$$NestJsonImplCopyWith<$Res> {
  __$$NestJsonImplCopyWithImpl(
    _$NestJsonImpl _value,
    $Res Function(_$NestJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NestJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$NestJsonImpl(
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
class _$NestJsonImpl extends _NestJson {
  const _$NestJsonImpl({required this.data}) : super._();

  factory _$NestJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$NestJsonImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'NestJson(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NestJsonImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of NestJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NestJsonImplCopyWith<_$NestJsonImpl> get copyWith =>
      __$$NestJsonImplCopyWithImpl<_$NestJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NestJsonImplToJson(this);
  }
}

abstract class _NestJson extends NestJson {
  const factory _NestJson({required final Data data}) = _$NestJsonImpl;
  const _NestJson._() : super._();

  factory _NestJson.fromJson(Map<String, dynamic> json) =
      _$NestJsonImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of NestJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NestJsonImplCopyWith<_$NestJsonImpl> get copyWith =>
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
  String get title => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  Comments get comments => throw _privateConstructorUsedError;
  CommentsDiff get commentsDiff => throw _privateConstructorUsedError;
  CommentsTags get commentsTags => throw _privateConstructorUsedError;
  CommentsValues get commentsValues => throw _privateConstructorUsedError;
  CommentsObj get commentsObj => throw _privateConstructorUsedError;
  CommentsMultiObj get commentsMultiObj => throw _privateConstructorUsedError;

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
    String title,
    Author author,
    Comments comments,
    CommentsDiff commentsDiff,
    CommentsTags commentsTags,
    CommentsValues commentsValues,
    CommentsObj commentsObj,
    CommentsMultiObj commentsMultiObj,
  });

  $AuthorCopyWith<$Res> get author;
  $CommentsCopyWith<$Res> get comments;
  $CommentsDiffCopyWith<$Res> get commentsDiff;
  $CommentsTagsCopyWith<$Res> get commentsTags;
  $CommentsValuesCopyWith<$Res> get commentsValues;
  $CommentsObjCopyWith<$Res> get commentsObj;
  $CommentsMultiObjCopyWith<$Res> get commentsMultiObj;
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
    Object? title = null,
    Object? author = null,
    Object? comments = null,
    Object? commentsDiff = null,
    Object? commentsTags = null,
    Object? commentsValues = null,
    Object? commentsObj = null,
    Object? commentsMultiObj = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as Author,
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as Comments,
            commentsDiff:
                null == commentsDiff
                    ? _value.commentsDiff
                    : commentsDiff // ignore: cast_nullable_to_non_nullable
                        as CommentsDiff,
            commentsTags:
                null == commentsTags
                    ? _value.commentsTags
                    : commentsTags // ignore: cast_nullable_to_non_nullable
                        as CommentsTags,
            commentsValues:
                null == commentsValues
                    ? _value.commentsValues
                    : commentsValues // ignore: cast_nullable_to_non_nullable
                        as CommentsValues,
            commentsObj:
                null == commentsObj
                    ? _value.commentsObj
                    : commentsObj // ignore: cast_nullable_to_non_nullable
                        as CommentsObj,
            commentsMultiObj:
                null == commentsMultiObj
                    ? _value.commentsMultiObj
                    : commentsMultiObj // ignore: cast_nullable_to_non_nullable
                        as CommentsMultiObj,
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
  $CommentsCopyWith<$Res> get comments {
    return $CommentsCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsDiffCopyWith<$Res> get commentsDiff {
    return $CommentsDiffCopyWith<$Res>(_value.commentsDiff, (value) {
      return _then(_value.copyWith(commentsDiff: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagsCopyWith<$Res>(_value.commentsTags, (value) {
      return _then(_value.copyWith(commentsTags: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsValuesCopyWith<$Res> get commentsValues {
    return $CommentsValuesCopyWith<$Res>(_value.commentsValues, (value) {
      return _then(_value.copyWith(commentsValues: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsObjCopyWith<$Res> get commentsObj {
    return $CommentsObjCopyWith<$Res>(_value.commentsObj, (value) {
      return _then(_value.copyWith(commentsObj: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsMultiObjCopyWith<$Res> get commentsMultiObj {
    return $CommentsMultiObjCopyWith<$Res>(_value.commentsMultiObj, (value) {
      return _then(_value.copyWith(commentsMultiObj: value) as $Val);
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
    String title,
    Author author,
    Comments comments,
    CommentsDiff commentsDiff,
    CommentsTags commentsTags,
    CommentsValues commentsValues,
    CommentsObj commentsObj,
    CommentsMultiObj commentsMultiObj,
  });

  @override
  $AuthorCopyWith<$Res> get author;
  @override
  $CommentsCopyWith<$Res> get comments;
  @override
  $CommentsDiffCopyWith<$Res> get commentsDiff;
  @override
  $CommentsTagsCopyWith<$Res> get commentsTags;
  @override
  $CommentsValuesCopyWith<$Res> get commentsValues;
  @override
  $CommentsObjCopyWith<$Res> get commentsObj;
  @override
  $CommentsMultiObjCopyWith<$Res> get commentsMultiObj;
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
    Object? title = null,
    Object? author = null,
    Object? comments = null,
    Object? commentsDiff = null,
    Object? commentsTags = null,
    Object? commentsValues = null,
    Object? commentsObj = null,
    Object? commentsMultiObj = null,
  }) {
    return _then(
      _$PostImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as Author,
        comments:
            null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as Comments,
        commentsDiff:
            null == commentsDiff
                ? _value.commentsDiff
                : commentsDiff // ignore: cast_nullable_to_non_nullable
                    as CommentsDiff,
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTags,
        commentsValues:
            null == commentsValues
                ? _value.commentsValues
                : commentsValues // ignore: cast_nullable_to_non_nullable
                    as CommentsValues,
        commentsObj:
            null == commentsObj
                ? _value.commentsObj
                : commentsObj // ignore: cast_nullable_to_non_nullable
                    as CommentsObj,
        commentsMultiObj:
            null == commentsMultiObj
                ? _value.commentsMultiObj
                : commentsMultiObj // ignore: cast_nullable_to_non_nullable
                    as CommentsMultiObj,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  const _$PostImpl({
    this.title = '',
    required this.author,
    required this.comments,
    required this.commentsDiff,
    required this.commentsTags,
    required this.commentsValues,
    required this.commentsObj,
    required this.commentsMultiObj,
  }) : super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  final Author author;
  @override
  final Comments comments;
  @override
  final CommentsDiff commentsDiff;
  @override
  final CommentsTags commentsTags;
  @override
  final CommentsValues commentsValues;
  @override
  final CommentsObj commentsObj;
  @override
  final CommentsMultiObj commentsMultiObj;

  @override
  String toString() {
    return 'Post(title: $title, author: $author, comments: $comments, commentsDiff: $commentsDiff, commentsTags: $commentsTags, commentsValues: $commentsValues, commentsObj: $commentsObj, commentsMultiObj: $commentsMultiObj)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.commentsDiff, commentsDiff) ||
                other.commentsDiff == commentsDiff) &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags) &&
            (identical(other.commentsValues, commentsValues) ||
                other.commentsValues == commentsValues) &&
            (identical(other.commentsObj, commentsObj) ||
                other.commentsObj == commentsObj) &&
            (identical(other.commentsMultiObj, commentsMultiObj) ||
                other.commentsMultiObj == commentsMultiObj));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    author,
    comments,
    commentsDiff,
    commentsTags,
    commentsValues,
    commentsObj,
    commentsMultiObj,
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
    final String title,
    required final Author author,
    required final Comments comments,
    required final CommentsDiff commentsDiff,
    required final CommentsTags commentsTags,
    required final CommentsValues commentsValues,
    required final CommentsObj commentsObj,
    required final CommentsMultiObj commentsMultiObj,
  }) = _$PostImpl;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get title;
  @override
  Author get author;
  @override
  Comments get comments;
  @override
  CommentsDiff get commentsDiff;
  @override
  CommentsTags get commentsTags;
  @override
  CommentsValues get commentsValues;
  @override
  CommentsObj get commentsObj;
  @override
  CommentsMultiObj get commentsMultiObj;

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
  $Res call({String id, String name});
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
abstract class _$$AuthorDataImplCopyWith<$Res>
    implements $AuthorDataCopyWith<$Res> {
  factory _$$AuthorDataImplCopyWith(
    _$AuthorDataImpl value,
    $Res Function(_$AuthorDataImpl) then,
  ) = __$$AuthorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
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
  $Res call({Object? id = null, Object? name = null}) {
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorDataImpl extends _AuthorData {
  const _$AuthorDataImpl({this.id = '', this.name = ''}) : super._();

  factory _$AuthorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'AuthorData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

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
  const factory _AuthorData({final String id, final String name}) =
      _$AuthorDataImpl;
  const _AuthorData._() : super._();

  factory _AuthorData.fromJson(Map<String, dynamic> json) =
      _$AuthorDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of AuthorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorDataImplCopyWith<_$AuthorDataImpl> get copyWith =>
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
  String get content => throw _privateConstructorUsedError;

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
  $Res call({String content});
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
  $Res call({Object? content = null}) {
    return _then(
      _value.copyWith(
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
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
  $Res call({String content});
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
  $Res call({Object? content = null}) {
    return _then(
      _$CommentsDataImpl(
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDataImpl extends _CommentsData {
  const _$CommentsDataImpl({this.content = ''}) : super._();

  factory _$CommentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDataImplFromJson(json);

  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'CommentsData(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDataImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

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
  const factory _CommentsData({final String content}) = _$CommentsDataImpl;
  const _CommentsData._() : super._();

  factory _CommentsData.fromJson(Map<String, dynamic> json) =
      _$CommentsDataImpl.fromJson;

  @override
  String get content;

  /// Create a copy of CommentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDataImplCopyWith<_$CommentsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsDiff _$CommentsDiffFromJson(Map<String, dynamic> json) {
  return _CommentsDiff.fromJson(json);
}

/// @nodoc
mixin _$CommentsDiff {
  List<CommentsDiffData> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsDiff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDiffCopyWith<CommentsDiff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDiffCopyWith<$Res> {
  factory $CommentsDiffCopyWith(
    CommentsDiff value,
    $Res Function(CommentsDiff) then,
  ) = _$CommentsDiffCopyWithImpl<$Res, CommentsDiff>;
  @useResult
  $Res call({List<CommentsDiffData> data});
}

/// @nodoc
class _$CommentsDiffCopyWithImpl<$Res, $Val extends CommentsDiff>
    implements $CommentsDiffCopyWith<$Res> {
  _$CommentsDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDiff
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
                        as List<CommentsDiffData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsDiffImplCopyWith<$Res>
    implements $CommentsDiffCopyWith<$Res> {
  factory _$$CommentsDiffImplCopyWith(
    _$CommentsDiffImpl value,
    $Res Function(_$CommentsDiffImpl) then,
  ) = __$$CommentsDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsDiffData> data});
}

/// @nodoc
class __$$CommentsDiffImplCopyWithImpl<$Res>
    extends _$CommentsDiffCopyWithImpl<$Res, _$CommentsDiffImpl>
    implements _$$CommentsDiffImplCopyWith<$Res> {
  __$$CommentsDiffImplCopyWithImpl(
    _$CommentsDiffImpl _value,
    $Res Function(_$CommentsDiffImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsDiffImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsDiffData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDiffImpl extends _CommentsDiff {
  const _$CommentsDiffImpl({final List<CommentsDiffData> data = const []})
    : _data = data,
      super._();

  factory _$CommentsDiffImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDiffImplFromJson(json);

  final List<CommentsDiffData> _data;
  @override
  @JsonKey()
  List<CommentsDiffData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsDiff(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDiffImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDiffImplCopyWith<_$CommentsDiffImpl> get copyWith =>
      __$$CommentsDiffImplCopyWithImpl<_$CommentsDiffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDiffImplToJson(this);
  }
}

abstract class _CommentsDiff extends CommentsDiff {
  const factory _CommentsDiff({final List<CommentsDiffData> data}) =
      _$CommentsDiffImpl;
  const _CommentsDiff._() : super._();

  factory _CommentsDiff.fromJson(Map<String, dynamic> json) =
      _$CommentsDiffImpl.fromJson;

  @override
  List<CommentsDiffData> get data;

  /// Create a copy of CommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDiffImplCopyWith<_$CommentsDiffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsDiffData _$CommentsDiffDataFromJson(Map<String, dynamic> json) {
  return _CommentsDiffData.fromJson(json);
}

/// @nodoc
mixin _$CommentsDiffData {
  String get status => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get contentDiff => throw _privateConstructorUsedError;

  /// Serializes this CommentsDiffData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDiffDataCopyWith<CommentsDiffData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDiffDataCopyWith<$Res> {
  factory $CommentsDiffDataCopyWith(
    CommentsDiffData value,
    $Res Function(CommentsDiffData) then,
  ) = _$CommentsDiffDataCopyWithImpl<$Res, CommentsDiffData>;
  @useResult
  $Res call({String status, String? content, String? contentDiff});
}

/// @nodoc
class _$CommentsDiffDataCopyWithImpl<$Res, $Val extends CommentsDiffData>
    implements $CommentsDiffDataCopyWith<$Res> {
  _$CommentsDiffDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
    Object? contentDiff = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String?,
            contentDiff:
                freezed == contentDiff
                    ? _value.contentDiff
                    : contentDiff // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsDiffDataImplCopyWith<$Res>
    implements $CommentsDiffDataCopyWith<$Res> {
  factory _$$CommentsDiffDataImplCopyWith(
    _$CommentsDiffDataImpl value,
    $Res Function(_$CommentsDiffDataImpl) then,
  ) = __$$CommentsDiffDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? content, String? contentDiff});
}

/// @nodoc
class __$$CommentsDiffDataImplCopyWithImpl<$Res>
    extends _$CommentsDiffDataCopyWithImpl<$Res, _$CommentsDiffDataImpl>
    implements _$$CommentsDiffDataImplCopyWith<$Res> {
  __$$CommentsDiffDataImplCopyWithImpl(
    _$CommentsDiffDataImpl _value,
    $Res Function(_$CommentsDiffDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
    Object? contentDiff = freezed,
  }) {
    return _then(
      _$CommentsDiffDataImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String?,
        contentDiff:
            freezed == contentDiff
                ? _value.contentDiff
                : contentDiff // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDiffDataImpl extends _CommentsDiffData {
  const _$CommentsDiffDataImpl({
    this.status = '',
    this.content = '',
    this.contentDiff = '',
  }) : super._();

  factory _$CommentsDiffDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDiffDataImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String? content;
  @override
  @JsonKey()
  final String? contentDiff;

  @override
  String toString() {
    return 'CommentsDiffData(status: $status, content: $content, contentDiff: $contentDiff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDiffDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.contentDiff, contentDiff) ||
                other.contentDiff == contentDiff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, content, contentDiff);

  /// Create a copy of CommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDiffDataImplCopyWith<_$CommentsDiffDataImpl> get copyWith =>
      __$$CommentsDiffDataImplCopyWithImpl<_$CommentsDiffDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDiffDataImplToJson(this);
  }
}

abstract class _CommentsDiffData extends CommentsDiffData {
  const factory _CommentsDiffData({
    final String status,
    final String? content,
    final String? contentDiff,
  }) = _$CommentsDiffDataImpl;
  const _CommentsDiffData._() : super._();

  factory _CommentsDiffData.fromJson(Map<String, dynamic> json) =
      _$CommentsDiffDataImpl.fromJson;

  @override
  String get status;
  @override
  String? get content;
  @override
  String? get contentDiff;

  /// Create a copy of CommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDiffDataImplCopyWith<_$CommentsDiffDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsTags _$CommentsTagsFromJson(Map<String, dynamic> json) {
  return _CommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTags {
  List<String> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagsCopyWith<CommentsTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagsCopyWith<$Res> {
  factory $CommentsTagsCopyWith(
    CommentsTags value,
    $Res Function(CommentsTags) then,
  ) = _$CommentsTagsCopyWithImpl<$Res, CommentsTags>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class _$CommentsTagsCopyWithImpl<$Res, $Val extends CommentsTags>
    implements $CommentsTagsCopyWith<$Res> {
  _$CommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTags
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
abstract class _$$CommentsTagsImplCopyWith<$Res>
    implements $CommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagsImplCopyWith(
    _$CommentsTagsImpl value,
    $Res Function(_$CommentsTagsImpl) then,
  ) = __$$CommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$CommentsTagsImplCopyWithImpl<$Res>
    extends _$CommentsTagsCopyWithImpl<$Res, _$CommentsTagsImpl>
    implements _$$CommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagsImplCopyWithImpl(
    _$CommentsTagsImpl _value,
    $Res Function(_$CommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagsImpl(
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
class _$CommentsTagsImpl extends _CommentsTags {
  const _$CommentsTagsImpl({final List<String> data = const []})
    : _data = data,
      super._();

  factory _$CommentsTagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagsImplFromJson(json);

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
    return 'CommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagsImplCopyWith<_$CommentsTagsImpl> get copyWith =>
      __$$CommentsTagsImplCopyWithImpl<_$CommentsTagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTags extends CommentsTags {
  const factory _CommentsTags({final List<String> data}) = _$CommentsTagsImpl;
  const _CommentsTags._() : super._();

  factory _CommentsTags.fromJson(Map<String, dynamic> json) =
      _$CommentsTagsImpl.fromJson;

  @override
  List<String> get data;

  /// Create a copy of CommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagsImplCopyWith<_$CommentsTagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsValues _$CommentsValuesFromJson(Map<String, dynamic> json) {
  return _CommentsValues.fromJson(json);
}

/// @nodoc
mixin _$CommentsValues {
  // Parse Null value as dynamic
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsValues to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsValuesCopyWith<CommentsValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsValuesCopyWith<$Res> {
  factory $CommentsValuesCopyWith(
    CommentsValues value,
    $Res Function(CommentsValues) then,
  ) = _$CommentsValuesCopyWithImpl<$Res, CommentsValues>;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class _$CommentsValuesCopyWithImpl<$Res, $Val extends CommentsValues>
    implements $CommentsValuesCopyWith<$Res> {
  _$CommentsValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsValues
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
                        as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsValuesImplCopyWith<$Res>
    implements $CommentsValuesCopyWith<$Res> {
  factory _$$CommentsValuesImplCopyWith(
    _$CommentsValuesImpl value,
    $Res Function(_$CommentsValuesImpl) then,
  ) = __$$CommentsValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$CommentsValuesImplCopyWithImpl<$Res>
    extends _$CommentsValuesCopyWithImpl<$Res, _$CommentsValuesImpl>
    implements _$$CommentsValuesImplCopyWith<$Res> {
  __$$CommentsValuesImplCopyWithImpl(
    _$CommentsValuesImpl _value,
    $Res Function(_$CommentsValuesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsValuesImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsValuesImpl extends _CommentsValues {
  const _$CommentsValuesImpl({final List<dynamic> data = const []})
    : _data = data,
      super._();

  factory _$CommentsValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsValuesImplFromJson(json);

  // Parse Null value as dynamic
  final List<dynamic> _data;
  // Parse Null value as dynamic
  @override
  @JsonKey()
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsValues(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsValuesImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsValuesImplCopyWith<_$CommentsValuesImpl> get copyWith =>
      __$$CommentsValuesImplCopyWithImpl<_$CommentsValuesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsValuesImplToJson(this);
  }
}

abstract class _CommentsValues extends CommentsValues {
  const factory _CommentsValues({final List<dynamic> data}) =
      _$CommentsValuesImpl;
  const _CommentsValues._() : super._();

  factory _CommentsValues.fromJson(Map<String, dynamic> json) =
      _$CommentsValuesImpl.fromJson;

  // Parse Null value as dynamic
  @override
  List<dynamic> get data;

  /// Create a copy of CommentsValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsValuesImplCopyWith<_$CommentsValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsObj _$CommentsObjFromJson(Map<String, dynamic> json) {
  return _CommentsObj.fromJson(json);
}

/// @nodoc
mixin _$CommentsObj {
  List<CommentsObjData> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsObj to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsObjCopyWith<CommentsObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsObjCopyWith<$Res> {
  factory $CommentsObjCopyWith(
    CommentsObj value,
    $Res Function(CommentsObj) then,
  ) = _$CommentsObjCopyWithImpl<$Res, CommentsObj>;
  @useResult
  $Res call({List<CommentsObjData> data});
}

/// @nodoc
class _$CommentsObjCopyWithImpl<$Res, $Val extends CommentsObj>
    implements $CommentsObjCopyWith<$Res> {
  _$CommentsObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsObj
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
                        as List<CommentsObjData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsObjImplCopyWith<$Res>
    implements $CommentsObjCopyWith<$Res> {
  factory _$$CommentsObjImplCopyWith(
    _$CommentsObjImpl value,
    $Res Function(_$CommentsObjImpl) then,
  ) = __$$CommentsObjImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsObjData> data});
}

/// @nodoc
class __$$CommentsObjImplCopyWithImpl<$Res>
    extends _$CommentsObjCopyWithImpl<$Res, _$CommentsObjImpl>
    implements _$$CommentsObjImplCopyWith<$Res> {
  __$$CommentsObjImplCopyWithImpl(
    _$CommentsObjImpl _value,
    $Res Function(_$CommentsObjImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsObjImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsObjData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsObjImpl extends _CommentsObj {
  const _$CommentsObjImpl({final List<CommentsObjData> data = const []})
    : _data = data,
      super._();

  factory _$CommentsObjImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsObjImplFromJson(json);

  final List<CommentsObjData> _data;
  @override
  @JsonKey()
  List<CommentsObjData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsObj(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsObjImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsObjImplCopyWith<_$CommentsObjImpl> get copyWith =>
      __$$CommentsObjImplCopyWithImpl<_$CommentsObjImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsObjImplToJson(this);
  }
}

abstract class _CommentsObj extends CommentsObj {
  const factory _CommentsObj({final List<CommentsObjData> data}) =
      _$CommentsObjImpl;
  const _CommentsObj._() : super._();

  factory _CommentsObj.fromJson(Map<String, dynamic> json) =
      _$CommentsObjImpl.fromJson;

  @override
  List<CommentsObjData> get data;

  /// Create a copy of CommentsObj
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsObjImplCopyWith<_$CommentsObjImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsObjData _$CommentsObjDataFromJson(Map<String, dynamic> json) {
  return _CommentsObjData.fromJson(json);
}

/// @nodoc
mixin _$CommentsObjData {
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  /// Serializes this CommentsObjData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsObjData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsObjDataCopyWith<CommentsObjData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsObjDataCopyWith<$Res> {
  factory $CommentsObjDataCopyWith(
    CommentsObjData value,
    $Res Function(CommentsObjData) then,
  ) = _$CommentsObjDataCopyWithImpl<$Res, CommentsObjData>;
  @useResult
  $Res call({String content, String author});
}

/// @nodoc
class _$CommentsObjDataCopyWithImpl<$Res, $Val extends CommentsObjData>
    implements $CommentsObjDataCopyWith<$Res> {
  _$CommentsObjDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsObjData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? author = null}) {
    return _then(
      _value.copyWith(
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsObjDataImplCopyWith<$Res>
    implements $CommentsObjDataCopyWith<$Res> {
  factory _$$CommentsObjDataImplCopyWith(
    _$CommentsObjDataImpl value,
    $Res Function(_$CommentsObjDataImpl) then,
  ) = __$$CommentsObjDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String author});
}

/// @nodoc
class __$$CommentsObjDataImplCopyWithImpl<$Res>
    extends _$CommentsObjDataCopyWithImpl<$Res, _$CommentsObjDataImpl>
    implements _$$CommentsObjDataImplCopyWith<$Res> {
  __$$CommentsObjDataImplCopyWithImpl(
    _$CommentsObjDataImpl _value,
    $Res Function(_$CommentsObjDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsObjData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? author = null}) {
    return _then(
      _$CommentsObjDataImpl(
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsObjDataImpl extends _CommentsObjData {
  const _$CommentsObjDataImpl({this.content = '', this.author = ''})
    : super._();

  factory _$CommentsObjDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsObjDataImplFromJson(json);

  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String author;

  @override
  String toString() {
    return 'CommentsObjData(content: $content, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsObjDataImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, author);

  /// Create a copy of CommentsObjData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsObjDataImplCopyWith<_$CommentsObjDataImpl> get copyWith =>
      __$$CommentsObjDataImplCopyWithImpl<_$CommentsObjDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsObjDataImplToJson(this);
  }
}

abstract class _CommentsObjData extends CommentsObjData {
  const factory _CommentsObjData({final String content, final String author}) =
      _$CommentsObjDataImpl;
  const _CommentsObjData._() : super._();

  factory _CommentsObjData.fromJson(Map<String, dynamic> json) =
      _$CommentsObjDataImpl.fromJson;

  @override
  String get content;
  @override
  String get author;

  /// Create a copy of CommentsObjData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsObjDataImplCopyWith<_$CommentsObjDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsMultiObj _$CommentsMultiObjFromJson(Map<String, dynamic> json) {
  return _CommentsMultiObj.fromJson(json);
}

/// @nodoc
mixin _$CommentsMultiObj {
  List<CommentsMultiObjData> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsMultiObj to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsMultiObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsMultiObjCopyWith<CommentsMultiObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsMultiObjCopyWith<$Res> {
  factory $CommentsMultiObjCopyWith(
    CommentsMultiObj value,
    $Res Function(CommentsMultiObj) then,
  ) = _$CommentsMultiObjCopyWithImpl<$Res, CommentsMultiObj>;
  @useResult
  $Res call({List<CommentsMultiObjData> data});
}

/// @nodoc
class _$CommentsMultiObjCopyWithImpl<$Res, $Val extends CommentsMultiObj>
    implements $CommentsMultiObjCopyWith<$Res> {
  _$CommentsMultiObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsMultiObj
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
                        as List<CommentsMultiObjData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsMultiObjImplCopyWith<$Res>
    implements $CommentsMultiObjCopyWith<$Res> {
  factory _$$CommentsMultiObjImplCopyWith(
    _$CommentsMultiObjImpl value,
    $Res Function(_$CommentsMultiObjImpl) then,
  ) = __$$CommentsMultiObjImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsMultiObjData> data});
}

/// @nodoc
class __$$CommentsMultiObjImplCopyWithImpl<$Res>
    extends _$CommentsMultiObjCopyWithImpl<$Res, _$CommentsMultiObjImpl>
    implements _$$CommentsMultiObjImplCopyWith<$Res> {
  __$$CommentsMultiObjImplCopyWithImpl(
    _$CommentsMultiObjImpl _value,
    $Res Function(_$CommentsMultiObjImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsMultiObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsMultiObjImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsMultiObjData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsMultiObjImpl extends _CommentsMultiObj {
  const _$CommentsMultiObjImpl({
    final List<CommentsMultiObjData> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsMultiObjImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsMultiObjImplFromJson(json);

  final List<CommentsMultiObjData> _data;
  @override
  @JsonKey()
  List<CommentsMultiObjData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsMultiObj(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsMultiObjImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsMultiObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsMultiObjImplCopyWith<_$CommentsMultiObjImpl> get copyWith =>
      __$$CommentsMultiObjImplCopyWithImpl<_$CommentsMultiObjImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsMultiObjImplToJson(this);
  }
}

abstract class _CommentsMultiObj extends CommentsMultiObj {
  const factory _CommentsMultiObj({final List<CommentsMultiObjData> data}) =
      _$CommentsMultiObjImpl;
  const _CommentsMultiObj._() : super._();

  factory _CommentsMultiObj.fromJson(Map<String, dynamic> json) =
      _$CommentsMultiObjImpl.fromJson;

  @override
  List<CommentsMultiObjData> get data;

  /// Create a copy of CommentsMultiObj
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsMultiObjImplCopyWith<_$CommentsMultiObjImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsMultiObjData _$CommentsMultiObjDataFromJson(Map<String, dynamic> json) {
  return _CommentsMultiObjData.fromJson(json);
}

/// @nodoc
mixin _$CommentsMultiObjData {
  String get type => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  /// Serializes this CommentsMultiObjData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsMultiObjData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsMultiObjDataCopyWith<CommentsMultiObjData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsMultiObjDataCopyWith<$Res> {
  factory $CommentsMultiObjDataCopyWith(
    CommentsMultiObjData value,
    $Res Function(CommentsMultiObjData) then,
  ) = _$CommentsMultiObjDataCopyWithImpl<$Res, CommentsMultiObjData>;
  @useResult
  $Res call({String type, String? content, String? url, int? width});
}

/// @nodoc
class _$CommentsMultiObjDataCopyWithImpl<
  $Res,
  $Val extends CommentsMultiObjData
>
    implements $CommentsMultiObjDataCopyWith<$Res> {
  _$CommentsMultiObjDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsMultiObjData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            width:
                freezed == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsMultiObjDataImplCopyWith<$Res>
    implements $CommentsMultiObjDataCopyWith<$Res> {
  factory _$$CommentsMultiObjDataImplCopyWith(
    _$CommentsMultiObjDataImpl value,
    $Res Function(_$CommentsMultiObjDataImpl) then,
  ) = __$$CommentsMultiObjDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? content, String? url, int? width});
}

/// @nodoc
class __$$CommentsMultiObjDataImplCopyWithImpl<$Res>
    extends _$CommentsMultiObjDataCopyWithImpl<$Res, _$CommentsMultiObjDataImpl>
    implements _$$CommentsMultiObjDataImplCopyWith<$Res> {
  __$$CommentsMultiObjDataImplCopyWithImpl(
    _$CommentsMultiObjDataImpl _value,
    $Res Function(_$CommentsMultiObjDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsMultiObjData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(
      _$CommentsMultiObjDataImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        width:
            freezed == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsMultiObjDataImpl extends _CommentsMultiObjData {
  const _$CommentsMultiObjDataImpl({
    this.type = '',
    this.content = '',
    this.url = '',
    this.width = 0,
  }) : super._();

  factory _$CommentsMultiObjDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsMultiObjDataImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String? content;
  @override
  @JsonKey()
  final String? url;
  @override
  @JsonKey()
  final int? width;

  @override
  String toString() {
    return 'CommentsMultiObjData(type: $type, content: $content, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsMultiObjDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, content, url, width);

  /// Create a copy of CommentsMultiObjData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsMultiObjDataImplCopyWith<_$CommentsMultiObjDataImpl>
  get copyWith =>
      __$$CommentsMultiObjDataImplCopyWithImpl<_$CommentsMultiObjDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsMultiObjDataImplToJson(this);
  }
}

abstract class _CommentsMultiObjData extends CommentsMultiObjData {
  const factory _CommentsMultiObjData({
    final String type,
    final String? content,
    final String? url,
    final int? width,
  }) = _$CommentsMultiObjDataImpl;
  const _CommentsMultiObjData._() : super._();

  factory _CommentsMultiObjData.fromJson(Map<String, dynamic> json) =
      _$CommentsMultiObjDataImpl.fromJson;

  @override
  String get type;
  @override
  String? get content;
  @override
  String? get url;
  @override
  int? get width;

  /// Create a copy of CommentsMultiObjData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsMultiObjDataImplCopyWith<_$CommentsMultiObjDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
