// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_diff_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsDiffResp _$CommentsDiffRespFromJson(Map<String, dynamic> json) {
  return _CommentsDiffResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsDiffResp {
  CommentsDiffRespCommentsDiff get commentsDiff =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsDiffResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDiffRespCopyWith<CommentsDiffResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDiffRespCopyWith<$Res> {
  factory $CommentsDiffRespCopyWith(
    CommentsDiffResp value,
    $Res Function(CommentsDiffResp) then,
  ) = _$CommentsDiffRespCopyWithImpl<$Res, CommentsDiffResp>;
  @useResult
  $Res call({CommentsDiffRespCommentsDiff commentsDiff});

  $CommentsDiffRespCommentsDiffCopyWith<$Res> get commentsDiff;
}

/// @nodoc
class _$CommentsDiffRespCopyWithImpl<$Res, $Val extends CommentsDiffResp>
    implements $CommentsDiffRespCopyWith<$Res> {
  _$CommentsDiffRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsDiff = null}) {
    return _then(
      _value.copyWith(
            commentsDiff:
                null == commentsDiff
                    ? _value.commentsDiff
                    : commentsDiff // ignore: cast_nullable_to_non_nullable
                        as CommentsDiffRespCommentsDiff,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsDiffRespCommentsDiffCopyWith<$Res> get commentsDiff {
    return $CommentsDiffRespCommentsDiffCopyWith<$Res>(_value.commentsDiff, (
      value,
    ) {
      return _then(_value.copyWith(commentsDiff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsDiffRespImplCopyWith<$Res>
    implements $CommentsDiffRespCopyWith<$Res> {
  factory _$$CommentsDiffRespImplCopyWith(
    _$CommentsDiffRespImpl value,
    $Res Function(_$CommentsDiffRespImpl) then,
  ) = __$$CommentsDiffRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsDiffRespCommentsDiff commentsDiff});

  @override
  $CommentsDiffRespCommentsDiffCopyWith<$Res> get commentsDiff;
}

/// @nodoc
class __$$CommentsDiffRespImplCopyWithImpl<$Res>
    extends _$CommentsDiffRespCopyWithImpl<$Res, _$CommentsDiffRespImpl>
    implements _$$CommentsDiffRespImplCopyWith<$Res> {
  __$$CommentsDiffRespImplCopyWithImpl(
    _$CommentsDiffRespImpl _value,
    $Res Function(_$CommentsDiffRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsDiff = null}) {
    return _then(
      _$CommentsDiffRespImpl(
        commentsDiff:
            null == commentsDiff
                ? _value.commentsDiff
                : commentsDiff // ignore: cast_nullable_to_non_nullable
                    as CommentsDiffRespCommentsDiff,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDiffRespImpl extends _CommentsDiffResp {
  const _$CommentsDiffRespImpl({required this.commentsDiff}) : super._();

  factory _$CommentsDiffRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDiffRespImplFromJson(json);

  @override
  final CommentsDiffRespCommentsDiff commentsDiff;

  @override
  String toString() {
    return 'CommentsDiffResp(commentsDiff: $commentsDiff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDiffRespImpl &&
            (identical(other.commentsDiff, commentsDiff) ||
                other.commentsDiff == commentsDiff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsDiff);

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDiffRespImplCopyWith<_$CommentsDiffRespImpl> get copyWith =>
      __$$CommentsDiffRespImplCopyWithImpl<_$CommentsDiffRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDiffRespImplToJson(this);
  }
}

abstract class _CommentsDiffResp extends CommentsDiffResp {
  const factory _CommentsDiffResp({
    required final CommentsDiffRespCommentsDiff commentsDiff,
  }) = _$CommentsDiffRespImpl;
  const _CommentsDiffResp._() : super._();

  factory _CommentsDiffResp.fromJson(Map<String, dynamic> json) =
      _$CommentsDiffRespImpl.fromJson;

  @override
  CommentsDiffRespCommentsDiff get commentsDiff;

  /// Create a copy of CommentsDiffResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDiffRespImplCopyWith<_$CommentsDiffRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsDiffRespCommentsDiff _$CommentsDiffRespCommentsDiffFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsDiffRespCommentsDiff.fromJson(json);
}

/// @nodoc
mixin _$CommentsDiffRespCommentsDiff {
  List<CommentsDiffRespCommentsDiffData> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsDiffRespCommentsDiff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDiffRespCommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDiffRespCommentsDiffCopyWith<CommentsDiffRespCommentsDiff>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDiffRespCommentsDiffCopyWith<$Res> {
  factory $CommentsDiffRespCommentsDiffCopyWith(
    CommentsDiffRespCommentsDiff value,
    $Res Function(CommentsDiffRespCommentsDiff) then,
  ) =
      _$CommentsDiffRespCommentsDiffCopyWithImpl<
        $Res,
        CommentsDiffRespCommentsDiff
      >;
  @useResult
  $Res call({List<CommentsDiffRespCommentsDiffData> data});
}

/// @nodoc
class _$CommentsDiffRespCommentsDiffCopyWithImpl<
  $Res,
  $Val extends CommentsDiffRespCommentsDiff
>
    implements $CommentsDiffRespCommentsDiffCopyWith<$Res> {
  _$CommentsDiffRespCommentsDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDiffRespCommentsDiff
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
                        as List<CommentsDiffRespCommentsDiffData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsDiffRespCommentsDiffImplCopyWith<$Res>
    implements $CommentsDiffRespCommentsDiffCopyWith<$Res> {
  factory _$$CommentsDiffRespCommentsDiffImplCopyWith(
    _$CommentsDiffRespCommentsDiffImpl value,
    $Res Function(_$CommentsDiffRespCommentsDiffImpl) then,
  ) = __$$CommentsDiffRespCommentsDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsDiffRespCommentsDiffData> data});
}

/// @nodoc
class __$$CommentsDiffRespCommentsDiffImplCopyWithImpl<$Res>
    extends
        _$CommentsDiffRespCommentsDiffCopyWithImpl<
          $Res,
          _$CommentsDiffRespCommentsDiffImpl
        >
    implements _$$CommentsDiffRespCommentsDiffImplCopyWith<$Res> {
  __$$CommentsDiffRespCommentsDiffImplCopyWithImpl(
    _$CommentsDiffRespCommentsDiffImpl _value,
    $Res Function(_$CommentsDiffRespCommentsDiffImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDiffRespCommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsDiffRespCommentsDiffImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<CommentsDiffRespCommentsDiffData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDiffRespCommentsDiffImpl extends _CommentsDiffRespCommentsDiff {
  const _$CommentsDiffRespCommentsDiffImpl({
    final List<CommentsDiffRespCommentsDiffData> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsDiffRespCommentsDiffImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsDiffRespCommentsDiffImplFromJson(json);

  final List<CommentsDiffRespCommentsDiffData> _data;
  @override
  @JsonKey()
  List<CommentsDiffRespCommentsDiffData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsDiffRespCommentsDiff(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDiffRespCommentsDiffImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsDiffRespCommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDiffRespCommentsDiffImplCopyWith<
    _$CommentsDiffRespCommentsDiffImpl
  >
  get copyWith => __$$CommentsDiffRespCommentsDiffImplCopyWithImpl<
    _$CommentsDiffRespCommentsDiffImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDiffRespCommentsDiffImplToJson(this);
  }
}

abstract class _CommentsDiffRespCommentsDiff
    extends CommentsDiffRespCommentsDiff {
  const factory _CommentsDiffRespCommentsDiff({
    final List<CommentsDiffRespCommentsDiffData> data,
  }) = _$CommentsDiffRespCommentsDiffImpl;
  const _CommentsDiffRespCommentsDiff._() : super._();

  factory _CommentsDiffRespCommentsDiff.fromJson(Map<String, dynamic> json) =
      _$CommentsDiffRespCommentsDiffImpl.fromJson;

  @override
  List<CommentsDiffRespCommentsDiffData> get data;

  /// Create a copy of CommentsDiffRespCommentsDiff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDiffRespCommentsDiffImplCopyWith<
    _$CommentsDiffRespCommentsDiffImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

CommentsDiffRespCommentsDiffData _$CommentsDiffRespCommentsDiffDataFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsDiffRespCommentsDiffData.fromJson(json);
}

/// @nodoc
mixin _$CommentsDiffRespCommentsDiffData {
  String get status => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get contentDiff => throw _privateConstructorUsedError;
  String? get nullAble => throw _privateConstructorUsedError;

  /// Serializes this CommentsDiffRespCommentsDiffData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDiffRespCommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDiffRespCommentsDiffDataCopyWith<CommentsDiffRespCommentsDiffData>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDiffRespCommentsDiffDataCopyWith<$Res> {
  factory $CommentsDiffRespCommentsDiffDataCopyWith(
    CommentsDiffRespCommentsDiffData value,
    $Res Function(CommentsDiffRespCommentsDiffData) then,
  ) =
      _$CommentsDiffRespCommentsDiffDataCopyWithImpl<
        $Res,
        CommentsDiffRespCommentsDiffData
      >;
  @useResult
  $Res call({
    String status,
    String? content,
    String? contentDiff,
    String? nullAble,
  });
}

/// @nodoc
class _$CommentsDiffRespCommentsDiffDataCopyWithImpl<
  $Res,
  $Val extends CommentsDiffRespCommentsDiffData
>
    implements $CommentsDiffRespCommentsDiffDataCopyWith<$Res> {
  _$CommentsDiffRespCommentsDiffDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDiffRespCommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
    Object? contentDiff = freezed,
    Object? nullAble = freezed,
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
            nullAble:
                freezed == nullAble
                    ? _value.nullAble
                    : nullAble // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsDiffRespCommentsDiffDataImplCopyWith<$Res>
    implements $CommentsDiffRespCommentsDiffDataCopyWith<$Res> {
  factory _$$CommentsDiffRespCommentsDiffDataImplCopyWith(
    _$CommentsDiffRespCommentsDiffDataImpl value,
    $Res Function(_$CommentsDiffRespCommentsDiffDataImpl) then,
  ) = __$$CommentsDiffRespCommentsDiffDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String status,
    String? content,
    String? contentDiff,
    String? nullAble,
  });
}

/// @nodoc
class __$$CommentsDiffRespCommentsDiffDataImplCopyWithImpl<$Res>
    extends
        _$CommentsDiffRespCommentsDiffDataCopyWithImpl<
          $Res,
          _$CommentsDiffRespCommentsDiffDataImpl
        >
    implements _$$CommentsDiffRespCommentsDiffDataImplCopyWith<$Res> {
  __$$CommentsDiffRespCommentsDiffDataImplCopyWithImpl(
    _$CommentsDiffRespCommentsDiffDataImpl _value,
    $Res Function(_$CommentsDiffRespCommentsDiffDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsDiffRespCommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = freezed,
    Object? contentDiff = freezed,
    Object? nullAble = freezed,
  }) {
    return _then(
      _$CommentsDiffRespCommentsDiffDataImpl(
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
        nullAble:
            freezed == nullAble
                ? _value.nullAble
                : nullAble // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDiffRespCommentsDiffDataImpl
    extends _CommentsDiffRespCommentsDiffData {
  const _$CommentsDiffRespCommentsDiffDataImpl({
    this.status = '',
    this.content = '',
    this.contentDiff = '',
    this.nullAble = '',
  }) : super._();

  factory _$CommentsDiffRespCommentsDiffDataImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsDiffRespCommentsDiffDataImplFromJson(json);

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
  @JsonKey()
  final String? nullAble;

  @override
  String toString() {
    return 'CommentsDiffRespCommentsDiffData(status: $status, content: $content, contentDiff: $contentDiff, nullAble: $nullAble)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsDiffRespCommentsDiffDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.contentDiff, contentDiff) ||
                other.contentDiff == contentDiff) &&
            (identical(other.nullAble, nullAble) ||
                other.nullAble == nullAble));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, content, contentDiff, nullAble);

  /// Create a copy of CommentsDiffRespCommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDiffRespCommentsDiffDataImplCopyWith<
    _$CommentsDiffRespCommentsDiffDataImpl
  >
  get copyWith => __$$CommentsDiffRespCommentsDiffDataImplCopyWithImpl<
    _$CommentsDiffRespCommentsDiffDataImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDiffRespCommentsDiffDataImplToJson(this);
  }
}

abstract class _CommentsDiffRespCommentsDiffData
    extends CommentsDiffRespCommentsDiffData {
  const factory _CommentsDiffRespCommentsDiffData({
    final String status,
    final String? content,
    final String? contentDiff,
    final String? nullAble,
  }) = _$CommentsDiffRespCommentsDiffDataImpl;
  const _CommentsDiffRespCommentsDiffData._() : super._();

  factory _CommentsDiffRespCommentsDiffData.fromJson(
    Map<String, dynamic> json,
  ) = _$CommentsDiffRespCommentsDiffDataImpl.fromJson;

  @override
  String get status;
  @override
  String? get content;
  @override
  String? get contentDiff;
  @override
  String? get nullAble;

  /// Create a copy of CommentsDiffRespCommentsDiffData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDiffRespCommentsDiffDataImplCopyWith<
    _$CommentsDiffRespCommentsDiffDataImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
