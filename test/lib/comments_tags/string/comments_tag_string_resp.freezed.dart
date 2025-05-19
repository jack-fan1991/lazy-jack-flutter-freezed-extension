// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_tag_string_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsTagStringResp _$CommentsTagStringRespFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagStringResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagStringResp {
  CommentsTagStringRespCommentsTags get commentsTags =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsTagStringResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagStringRespCopyWith<CommentsTagStringResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagStringRespCopyWith<$Res> {
  factory $CommentsTagStringRespCopyWith(
    CommentsTagStringResp value,
    $Res Function(CommentsTagStringResp) then,
  ) = _$CommentsTagStringRespCopyWithImpl<$Res, CommentsTagStringResp>;
  @useResult
  $Res call({CommentsTagStringRespCommentsTags commentsTags});

  $CommentsTagStringRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class _$CommentsTagStringRespCopyWithImpl<
  $Res,
  $Val extends CommentsTagStringResp
>
    implements $CommentsTagStringRespCopyWith<$Res> {
  _$CommentsTagStringRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _value.copyWith(
            commentsTags:
                null == commentsTags
                    ? _value.commentsTags
                    : commentsTags // ignore: cast_nullable_to_non_nullable
                        as CommentsTagStringRespCommentsTags,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagStringRespCommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagStringRespCommentsTagsCopyWith<$Res>(
      _value.commentsTags,
      (value) {
        return _then(_value.copyWith(commentsTags: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$CommentsTagStringRespImplCopyWith<$Res>
    implements $CommentsTagStringRespCopyWith<$Res> {
  factory _$$CommentsTagStringRespImplCopyWith(
    _$CommentsTagStringRespImpl value,
    $Res Function(_$CommentsTagStringRespImpl) then,
  ) = __$$CommentsTagStringRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsTagStringRespCommentsTags commentsTags});

  @override
  $CommentsTagStringRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class __$$CommentsTagStringRespImplCopyWithImpl<$Res>
    extends
        _$CommentsTagStringRespCopyWithImpl<$Res, _$CommentsTagStringRespImpl>
    implements _$$CommentsTagStringRespImplCopyWith<$Res> {
  __$$CommentsTagStringRespImplCopyWithImpl(
    _$CommentsTagStringRespImpl _value,
    $Res Function(_$CommentsTagStringRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _$CommentsTagStringRespImpl(
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTagStringRespCommentsTags,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagStringRespImpl extends _CommentsTagStringResp {
  const _$CommentsTagStringRespImpl({required this.commentsTags}) : super._();

  factory _$CommentsTagStringRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagStringRespImplFromJson(json);

  @override
  final CommentsTagStringRespCommentsTags commentsTags;

  @override
  String toString() {
    return 'CommentsTagStringResp(commentsTags: $commentsTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagStringRespImpl &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsTags);

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagStringRespImplCopyWith<_$CommentsTagStringRespImpl>
  get copyWith =>
      __$$CommentsTagStringRespImplCopyWithImpl<_$CommentsTagStringRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagStringRespImplToJson(this);
  }
}

abstract class _CommentsTagStringResp extends CommentsTagStringResp {
  const factory _CommentsTagStringResp({
    required final CommentsTagStringRespCommentsTags commentsTags,
  }) = _$CommentsTagStringRespImpl;
  const _CommentsTagStringResp._() : super._();

  factory _CommentsTagStringResp.fromJson(Map<String, dynamic> json) =
      _$CommentsTagStringRespImpl.fromJson;

  @override
  CommentsTagStringRespCommentsTags get commentsTags;

  /// Create a copy of CommentsTagStringResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagStringRespImplCopyWith<_$CommentsTagStringRespImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CommentsTagStringRespCommentsTags _$CommentsTagStringRespCommentsTagsFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagStringRespCommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagStringRespCommentsTags {
  List<String> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTagStringRespCommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagStringRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagStringRespCommentsTagsCopyWith<CommentsTagStringRespCommentsTags>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagStringRespCommentsTagsCopyWith<$Res> {
  factory $CommentsTagStringRespCommentsTagsCopyWith(
    CommentsTagStringRespCommentsTags value,
    $Res Function(CommentsTagStringRespCommentsTags) then,
  ) =
      _$CommentsTagStringRespCommentsTagsCopyWithImpl<
        $Res,
        CommentsTagStringRespCommentsTags
      >;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class _$CommentsTagStringRespCommentsTagsCopyWithImpl<
  $Res,
  $Val extends CommentsTagStringRespCommentsTags
>
    implements $CommentsTagStringRespCommentsTagsCopyWith<$Res> {
  _$CommentsTagStringRespCommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagStringRespCommentsTags
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
abstract class _$$CommentsTagStringRespCommentsTagsImplCopyWith<$Res>
    implements $CommentsTagStringRespCommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagStringRespCommentsTagsImplCopyWith(
    _$CommentsTagStringRespCommentsTagsImpl value,
    $Res Function(_$CommentsTagStringRespCommentsTagsImpl) then,
  ) = __$$CommentsTagStringRespCommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$CommentsTagStringRespCommentsTagsImplCopyWithImpl<$Res>
    extends
        _$CommentsTagStringRespCommentsTagsCopyWithImpl<
          $Res,
          _$CommentsTagStringRespCommentsTagsImpl
        >
    implements _$$CommentsTagStringRespCommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagStringRespCommentsTagsImplCopyWithImpl(
    _$CommentsTagStringRespCommentsTagsImpl _value,
    $Res Function(_$CommentsTagStringRespCommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagStringRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagStringRespCommentsTagsImpl(
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
class _$CommentsTagStringRespCommentsTagsImpl
    extends _CommentsTagStringRespCommentsTags {
  const _$CommentsTagStringRespCommentsTagsImpl({
    final List<String> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsTagStringRespCommentsTagsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsTagStringRespCommentsTagsImplFromJson(json);

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
    return 'CommentsTagStringRespCommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagStringRespCommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTagStringRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagStringRespCommentsTagsImplCopyWith<
    _$CommentsTagStringRespCommentsTagsImpl
  >
  get copyWith => __$$CommentsTagStringRespCommentsTagsImplCopyWithImpl<
    _$CommentsTagStringRespCommentsTagsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagStringRespCommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTagStringRespCommentsTags
    extends CommentsTagStringRespCommentsTags {
  const factory _CommentsTagStringRespCommentsTags({final List<String> data}) =
      _$CommentsTagStringRespCommentsTagsImpl;
  const _CommentsTagStringRespCommentsTags._() : super._();

  factory _CommentsTagStringRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) = _$CommentsTagStringRespCommentsTagsImpl.fromJson;

  @override
  List<String> get data;

  /// Create a copy of CommentsTagStringRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagStringRespCommentsTagsImplCopyWith<
    _$CommentsTagStringRespCommentsTagsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
