// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_tag_double_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsTagDoubleResp _$CommentsTagDoubleRespFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagDoubleResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagDoubleResp {
  CommentsTagDoubleRespCommentsTags get commentsTags =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsTagDoubleResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagDoubleResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagDoubleRespCopyWith<CommentsTagDoubleResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagDoubleRespCopyWith<$Res> {
  factory $CommentsTagDoubleRespCopyWith(
    CommentsTagDoubleResp value,
    $Res Function(CommentsTagDoubleResp) then,
  ) = _$CommentsTagDoubleRespCopyWithImpl<$Res, CommentsTagDoubleResp>;
  @useResult
  $Res call({CommentsTagDoubleRespCommentsTags commentsTags});

  $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class _$CommentsTagDoubleRespCopyWithImpl<
  $Res,
  $Val extends CommentsTagDoubleResp
>
    implements $CommentsTagDoubleRespCopyWith<$Res> {
  _$CommentsTagDoubleRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagDoubleResp
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
                        as CommentsTagDoubleRespCommentsTags,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsTagDoubleResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagDoubleRespCommentsTagsCopyWith<$Res>(
      _value.commentsTags,
      (value) {
        return _then(_value.copyWith(commentsTags: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$CommentsTagDoubleRespImplCopyWith<$Res>
    implements $CommentsTagDoubleRespCopyWith<$Res> {
  factory _$$CommentsTagDoubleRespImplCopyWith(
    _$CommentsTagDoubleRespImpl value,
    $Res Function(_$CommentsTagDoubleRespImpl) then,
  ) = __$$CommentsTagDoubleRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsTagDoubleRespCommentsTags commentsTags});

  @override
  $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class __$$CommentsTagDoubleRespImplCopyWithImpl<$Res>
    extends
        _$CommentsTagDoubleRespCopyWithImpl<$Res, _$CommentsTagDoubleRespImpl>
    implements _$$CommentsTagDoubleRespImplCopyWith<$Res> {
  __$$CommentsTagDoubleRespImplCopyWithImpl(
    _$CommentsTagDoubleRespImpl _value,
    $Res Function(_$CommentsTagDoubleRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagDoubleResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _$CommentsTagDoubleRespImpl(
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTagDoubleRespCommentsTags,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagDoubleRespImpl extends _CommentsTagDoubleResp {
  const _$CommentsTagDoubleRespImpl({required this.commentsTags}) : super._();

  factory _$CommentsTagDoubleRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagDoubleRespImplFromJson(json);

  @override
  final CommentsTagDoubleRespCommentsTags commentsTags;

  @override
  String toString() {
    return 'CommentsTagDoubleResp(commentsTags: $commentsTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagDoubleRespImpl &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsTags);

  /// Create a copy of CommentsTagDoubleResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagDoubleRespImplCopyWith<_$CommentsTagDoubleRespImpl>
  get copyWith =>
      __$$CommentsTagDoubleRespImplCopyWithImpl<_$CommentsTagDoubleRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagDoubleRespImplToJson(this);
  }
}

abstract class _CommentsTagDoubleResp extends CommentsTagDoubleResp {
  const factory _CommentsTagDoubleResp({
    required final CommentsTagDoubleRespCommentsTags commentsTags,
  }) = _$CommentsTagDoubleRespImpl;
  const _CommentsTagDoubleResp._() : super._();

  factory _CommentsTagDoubleResp.fromJson(Map<String, dynamic> json) =
      _$CommentsTagDoubleRespImpl.fromJson;

  @override
  CommentsTagDoubleRespCommentsTags get commentsTags;

  /// Create a copy of CommentsTagDoubleResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagDoubleRespImplCopyWith<_$CommentsTagDoubleRespImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CommentsTagDoubleRespCommentsTags _$CommentsTagDoubleRespCommentsTagsFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagDoubleRespCommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagDoubleRespCommentsTags {
  List<double> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTagDoubleRespCommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagDoubleRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagDoubleRespCommentsTagsCopyWith<CommentsTagDoubleRespCommentsTags>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> {
  factory $CommentsTagDoubleRespCommentsTagsCopyWith(
    CommentsTagDoubleRespCommentsTags value,
    $Res Function(CommentsTagDoubleRespCommentsTags) then,
  ) =
      _$CommentsTagDoubleRespCommentsTagsCopyWithImpl<
        $Res,
        CommentsTagDoubleRespCommentsTags
      >;
  @useResult
  $Res call({List<double> data});
}

/// @nodoc
class _$CommentsTagDoubleRespCommentsTagsCopyWithImpl<
  $Res,
  $Val extends CommentsTagDoubleRespCommentsTags
>
    implements $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> {
  _$CommentsTagDoubleRespCommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagDoubleRespCommentsTags
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
                        as List<double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsTagDoubleRespCommentsTagsImplCopyWith<$Res>
    implements $CommentsTagDoubleRespCommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagDoubleRespCommentsTagsImplCopyWith(
    _$CommentsTagDoubleRespCommentsTagsImpl value,
    $Res Function(_$CommentsTagDoubleRespCommentsTagsImpl) then,
  ) = __$$CommentsTagDoubleRespCommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> data});
}

/// @nodoc
class __$$CommentsTagDoubleRespCommentsTagsImplCopyWithImpl<$Res>
    extends
        _$CommentsTagDoubleRespCommentsTagsCopyWithImpl<
          $Res,
          _$CommentsTagDoubleRespCommentsTagsImpl
        >
    implements _$$CommentsTagDoubleRespCommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagDoubleRespCommentsTagsImplCopyWithImpl(
    _$CommentsTagDoubleRespCommentsTagsImpl _value,
    $Res Function(_$CommentsTagDoubleRespCommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagDoubleRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagDoubleRespCommentsTagsImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagDoubleRespCommentsTagsImpl
    extends _CommentsTagDoubleRespCommentsTags {
  const _$CommentsTagDoubleRespCommentsTagsImpl({
    final List<double> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsTagDoubleRespCommentsTagsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsTagDoubleRespCommentsTagsImplFromJson(json);

  final List<double> _data;
  @override
  @JsonKey()
  List<double> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsTagDoubleRespCommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagDoubleRespCommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTagDoubleRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagDoubleRespCommentsTagsImplCopyWith<
    _$CommentsTagDoubleRespCommentsTagsImpl
  >
  get copyWith => __$$CommentsTagDoubleRespCommentsTagsImplCopyWithImpl<
    _$CommentsTagDoubleRespCommentsTagsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagDoubleRespCommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTagDoubleRespCommentsTags
    extends CommentsTagDoubleRespCommentsTags {
  const factory _CommentsTagDoubleRespCommentsTags({final List<double> data}) =
      _$CommentsTagDoubleRespCommentsTagsImpl;
  const _CommentsTagDoubleRespCommentsTags._() : super._();

  factory _CommentsTagDoubleRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) = _$CommentsTagDoubleRespCommentsTagsImpl.fromJson;

  @override
  List<double> get data;

  /// Create a copy of CommentsTagDoubleRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagDoubleRespCommentsTagsImplCopyWith<
    _$CommentsTagDoubleRespCommentsTagsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
