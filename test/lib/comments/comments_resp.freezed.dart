// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsResp _$CommentsRespFromJson(Map<String, dynamic> json) {
  return _CommentsResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsResp {
  CommentsRespComments get comments => throw _privateConstructorUsedError;

  /// Serializes this CommentsResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsRespCopyWith<CommentsResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsRespCopyWith<$Res> {
  factory $CommentsRespCopyWith(
    CommentsResp value,
    $Res Function(CommentsResp) then,
  ) = _$CommentsRespCopyWithImpl<$Res, CommentsResp>;
  @useResult
  $Res call({CommentsRespComments comments});

  $CommentsRespCommentsCopyWith<$Res> get comments;
}

/// @nodoc
class _$CommentsRespCopyWithImpl<$Res, $Val extends CommentsResp>
    implements $CommentsRespCopyWith<$Res> {
  _$CommentsRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comments = null}) {
    return _then(
      _value.copyWith(
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as CommentsRespComments,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsRespCommentsCopyWith<$Res> get comments {
    return $CommentsRespCommentsCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsRespImplCopyWith<$Res>
    implements $CommentsRespCopyWith<$Res> {
  factory _$$CommentsRespImplCopyWith(
    _$CommentsRespImpl value,
    $Res Function(_$CommentsRespImpl) then,
  ) = __$$CommentsRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsRespComments comments});

  @override
  $CommentsRespCommentsCopyWith<$Res> get comments;
}

/// @nodoc
class __$$CommentsRespImplCopyWithImpl<$Res>
    extends _$CommentsRespCopyWithImpl<$Res, _$CommentsRespImpl>
    implements _$$CommentsRespImplCopyWith<$Res> {
  __$$CommentsRespImplCopyWithImpl(
    _$CommentsRespImpl _value,
    $Res Function(_$CommentsRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comments = null}) {
    return _then(
      _$CommentsRespImpl(
        comments:
            null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as CommentsRespComments,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsRespImpl extends _CommentsResp {
  const _$CommentsRespImpl({required this.comments}) : super._();

  factory _$CommentsRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsRespImplFromJson(json);

  @override
  final CommentsRespComments comments;

  @override
  String toString() {
    return 'CommentsResp(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsRespImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, comments);

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsRespImplCopyWith<_$CommentsRespImpl> get copyWith =>
      __$$CommentsRespImplCopyWithImpl<_$CommentsRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsRespImplToJson(this);
  }
}

abstract class _CommentsResp extends CommentsResp {
  const factory _CommentsResp({required final CommentsRespComments comments}) =
      _$CommentsRespImpl;
  const _CommentsResp._() : super._();

  factory _CommentsResp.fromJson(Map<String, dynamic> json) =
      _$CommentsRespImpl.fromJson;

  @override
  CommentsRespComments get comments;

  /// Create a copy of CommentsResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsRespImplCopyWith<_$CommentsRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsRespComments _$CommentsRespCommentsFromJson(Map<String, dynamic> json) {
  return _CommentsRespComments.fromJson(json);
}

/// @nodoc
mixin _$CommentsRespComments {
  List<CommentsRespCommentsData> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsRespComments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsRespComments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsRespCommentsCopyWith<CommentsRespComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsRespCommentsCopyWith<$Res> {
  factory $CommentsRespCommentsCopyWith(
    CommentsRespComments value,
    $Res Function(CommentsRespComments) then,
  ) = _$CommentsRespCommentsCopyWithImpl<$Res, CommentsRespComments>;
  @useResult
  $Res call({List<CommentsRespCommentsData> data});
}

/// @nodoc
class _$CommentsRespCommentsCopyWithImpl<
  $Res,
  $Val extends CommentsRespComments
>
    implements $CommentsRespCommentsCopyWith<$Res> {
  _$CommentsRespCommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsRespComments
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
                        as List<CommentsRespCommentsData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsRespCommentsImplCopyWith<$Res>
    implements $CommentsRespCommentsCopyWith<$Res> {
  factory _$$CommentsRespCommentsImplCopyWith(
    _$CommentsRespCommentsImpl value,
    $Res Function(_$CommentsRespCommentsImpl) then,
  ) = __$$CommentsRespCommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsRespCommentsData> data});
}

/// @nodoc
class __$$CommentsRespCommentsImplCopyWithImpl<$Res>
    extends _$CommentsRespCommentsCopyWithImpl<$Res, _$CommentsRespCommentsImpl>
    implements _$$CommentsRespCommentsImplCopyWith<$Res> {
  __$$CommentsRespCommentsImplCopyWithImpl(
    _$CommentsRespCommentsImpl _value,
    $Res Function(_$CommentsRespCommentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsRespComments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsRespCommentsImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsRespCommentsData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsRespCommentsImpl extends _CommentsRespComments {
  const _$CommentsRespCommentsImpl({
    final List<CommentsRespCommentsData> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsRespCommentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsRespCommentsImplFromJson(json);

  final List<CommentsRespCommentsData> _data;
  @override
  @JsonKey()
  List<CommentsRespCommentsData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsRespComments(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsRespCommentsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsRespComments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsRespCommentsImplCopyWith<_$CommentsRespCommentsImpl>
  get copyWith =>
      __$$CommentsRespCommentsImplCopyWithImpl<_$CommentsRespCommentsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsRespCommentsImplToJson(this);
  }
}

abstract class _CommentsRespComments extends CommentsRespComments {
  const factory _CommentsRespComments({
    final List<CommentsRespCommentsData> data,
  }) = _$CommentsRespCommentsImpl;
  const _CommentsRespComments._() : super._();

  factory _CommentsRespComments.fromJson(Map<String, dynamic> json) =
      _$CommentsRespCommentsImpl.fromJson;

  @override
  List<CommentsRespCommentsData> get data;

  /// Create a copy of CommentsRespComments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsRespCommentsImplCopyWith<_$CommentsRespCommentsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CommentsRespCommentsData _$CommentsRespCommentsDataFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsRespCommentsData.fromJson(json);
}

/// @nodoc
mixin _$CommentsRespCommentsData {
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CommentsRespCommentsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsRespCommentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsRespCommentsDataCopyWith<CommentsRespCommentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsRespCommentsDataCopyWith<$Res> {
  factory $CommentsRespCommentsDataCopyWith(
    CommentsRespCommentsData value,
    $Res Function(CommentsRespCommentsData) then,
  ) = _$CommentsRespCommentsDataCopyWithImpl<$Res, CommentsRespCommentsData>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$CommentsRespCommentsDataCopyWithImpl<
  $Res,
  $Val extends CommentsRespCommentsData
>
    implements $CommentsRespCommentsDataCopyWith<$Res> {
  _$CommentsRespCommentsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsRespCommentsData
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
abstract class _$$CommentsRespCommentsDataImplCopyWith<$Res>
    implements $CommentsRespCommentsDataCopyWith<$Res> {
  factory _$$CommentsRespCommentsDataImplCopyWith(
    _$CommentsRespCommentsDataImpl value,
    $Res Function(_$CommentsRespCommentsDataImpl) then,
  ) = __$$CommentsRespCommentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$CommentsRespCommentsDataImplCopyWithImpl<$Res>
    extends
        _$CommentsRespCommentsDataCopyWithImpl<
          $Res,
          _$CommentsRespCommentsDataImpl
        >
    implements _$$CommentsRespCommentsDataImplCopyWith<$Res> {
  __$$CommentsRespCommentsDataImplCopyWithImpl(
    _$CommentsRespCommentsDataImpl _value,
    $Res Function(_$CommentsRespCommentsDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsRespCommentsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _$CommentsRespCommentsDataImpl(
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
class _$CommentsRespCommentsDataImpl extends _CommentsRespCommentsData {
  const _$CommentsRespCommentsDataImpl({this.content = ''}) : super._();

  factory _$CommentsRespCommentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsRespCommentsDataImplFromJson(json);

  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'CommentsRespCommentsData(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsRespCommentsDataImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of CommentsRespCommentsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsRespCommentsDataImplCopyWith<_$CommentsRespCommentsDataImpl>
  get copyWith => __$$CommentsRespCommentsDataImplCopyWithImpl<
    _$CommentsRespCommentsDataImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsRespCommentsDataImplToJson(this);
  }
}

abstract class _CommentsRespCommentsData extends CommentsRespCommentsData {
  const factory _CommentsRespCommentsData({final String content}) =
      _$CommentsRespCommentsDataImpl;
  const _CommentsRespCommentsData._() : super._();

  factory _CommentsRespCommentsData.fromJson(Map<String, dynamic> json) =
      _$CommentsRespCommentsDataImpl.fromJson;

  @override
  String get content;

  /// Create a copy of CommentsRespCommentsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsRespCommentsDataImplCopyWith<_$CommentsRespCommentsDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
