// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_tag_dynamic_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsTagDynamicResp _$CommentsTagDynamicRespFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagDynamicResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagDynamicResp {
  CommentsTagDynamicRespCommentsTags get commentsTags =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsTagDynamicResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagDynamicResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagDynamicRespCopyWith<CommentsTagDynamicResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagDynamicRespCopyWith<$Res> {
  factory $CommentsTagDynamicRespCopyWith(
    CommentsTagDynamicResp value,
    $Res Function(CommentsTagDynamicResp) then,
  ) = _$CommentsTagDynamicRespCopyWithImpl<$Res, CommentsTagDynamicResp>;
  @useResult
  $Res call({CommentsTagDynamicRespCommentsTags commentsTags});

  $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class _$CommentsTagDynamicRespCopyWithImpl<
  $Res,
  $Val extends CommentsTagDynamicResp
>
    implements $CommentsTagDynamicRespCopyWith<$Res> {
  _$CommentsTagDynamicRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagDynamicResp
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
                        as CommentsTagDynamicRespCommentsTags,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsTagDynamicResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagDynamicRespCommentsTagsCopyWith<$Res>(
      _value.commentsTags,
      (value) {
        return _then(_value.copyWith(commentsTags: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$CommentsTagDynamicRespImplCopyWith<$Res>
    implements $CommentsTagDynamicRespCopyWith<$Res> {
  factory _$$CommentsTagDynamicRespImplCopyWith(
    _$CommentsTagDynamicRespImpl value,
    $Res Function(_$CommentsTagDynamicRespImpl) then,
  ) = __$$CommentsTagDynamicRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsTagDynamicRespCommentsTags commentsTags});

  @override
  $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class __$$CommentsTagDynamicRespImplCopyWithImpl<$Res>
    extends
        _$CommentsTagDynamicRespCopyWithImpl<$Res, _$CommentsTagDynamicRespImpl>
    implements _$$CommentsTagDynamicRespImplCopyWith<$Res> {
  __$$CommentsTagDynamicRespImplCopyWithImpl(
    _$CommentsTagDynamicRespImpl _value,
    $Res Function(_$CommentsTagDynamicRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagDynamicResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _$CommentsTagDynamicRespImpl(
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTagDynamicRespCommentsTags,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagDynamicRespImpl extends _CommentsTagDynamicResp {
  const _$CommentsTagDynamicRespImpl({required this.commentsTags}) : super._();

  factory _$CommentsTagDynamicRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagDynamicRespImplFromJson(json);

  @override
  final CommentsTagDynamicRespCommentsTags commentsTags;

  @override
  String toString() {
    return 'CommentsTagDynamicResp(commentsTags: $commentsTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagDynamicRespImpl &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsTags);

  /// Create a copy of CommentsTagDynamicResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagDynamicRespImplCopyWith<_$CommentsTagDynamicRespImpl>
  get copyWith =>
      __$$CommentsTagDynamicRespImplCopyWithImpl<_$CommentsTagDynamicRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagDynamicRespImplToJson(this);
  }
}

abstract class _CommentsTagDynamicResp extends CommentsTagDynamicResp {
  const factory _CommentsTagDynamicResp({
    required final CommentsTagDynamicRespCommentsTags commentsTags,
  }) = _$CommentsTagDynamicRespImpl;
  const _CommentsTagDynamicResp._() : super._();

  factory _CommentsTagDynamicResp.fromJson(Map<String, dynamic> json) =
      _$CommentsTagDynamicRespImpl.fromJson;

  @override
  CommentsTagDynamicRespCommentsTags get commentsTags;

  /// Create a copy of CommentsTagDynamicResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagDynamicRespImplCopyWith<_$CommentsTagDynamicRespImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CommentsTagDynamicRespCommentsTags _$CommentsTagDynamicRespCommentsTagsFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagDynamicRespCommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagDynamicRespCommentsTags {
  // Parse Null value as dynamic
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTagDynamicRespCommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagDynamicRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagDynamicRespCommentsTagsCopyWith<
    CommentsTagDynamicRespCommentsTags
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> {
  factory $CommentsTagDynamicRespCommentsTagsCopyWith(
    CommentsTagDynamicRespCommentsTags value,
    $Res Function(CommentsTagDynamicRespCommentsTags) then,
  ) =
      _$CommentsTagDynamicRespCommentsTagsCopyWithImpl<
        $Res,
        CommentsTagDynamicRespCommentsTags
      >;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class _$CommentsTagDynamicRespCommentsTagsCopyWithImpl<
  $Res,
  $Val extends CommentsTagDynamicRespCommentsTags
>
    implements $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> {
  _$CommentsTagDynamicRespCommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagDynamicRespCommentsTags
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
abstract class _$$CommentsTagDynamicRespCommentsTagsImplCopyWith<$Res>
    implements $CommentsTagDynamicRespCommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagDynamicRespCommentsTagsImplCopyWith(
    _$CommentsTagDynamicRespCommentsTagsImpl value,
    $Res Function(_$CommentsTagDynamicRespCommentsTagsImpl) then,
  ) = __$$CommentsTagDynamicRespCommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$CommentsTagDynamicRespCommentsTagsImplCopyWithImpl<$Res>
    extends
        _$CommentsTagDynamicRespCommentsTagsCopyWithImpl<
          $Res,
          _$CommentsTagDynamicRespCommentsTagsImpl
        >
    implements _$$CommentsTagDynamicRespCommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagDynamicRespCommentsTagsImplCopyWithImpl(
    _$CommentsTagDynamicRespCommentsTagsImpl _value,
    $Res Function(_$CommentsTagDynamicRespCommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagDynamicRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagDynamicRespCommentsTagsImpl(
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
class _$CommentsTagDynamicRespCommentsTagsImpl
    extends _CommentsTagDynamicRespCommentsTags {
  const _$CommentsTagDynamicRespCommentsTagsImpl({
    final List<dynamic> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsTagDynamicRespCommentsTagsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsTagDynamicRespCommentsTagsImplFromJson(json);

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
    return 'CommentsTagDynamicRespCommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagDynamicRespCommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTagDynamicRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagDynamicRespCommentsTagsImplCopyWith<
    _$CommentsTagDynamicRespCommentsTagsImpl
  >
  get copyWith => __$$CommentsTagDynamicRespCommentsTagsImplCopyWithImpl<
    _$CommentsTagDynamicRespCommentsTagsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagDynamicRespCommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTagDynamicRespCommentsTags
    extends CommentsTagDynamicRespCommentsTags {
  const factory _CommentsTagDynamicRespCommentsTags({
    final List<dynamic> data,
  }) = _$CommentsTagDynamicRespCommentsTagsImpl;
  const _CommentsTagDynamicRespCommentsTags._() : super._();

  factory _CommentsTagDynamicRespCommentsTags.fromJson(
    Map<String, dynamic> json,
  ) = _$CommentsTagDynamicRespCommentsTagsImpl.fromJson;

  // Parse Null value as dynamic
  @override
  List<dynamic> get data;

  /// Create a copy of CommentsTagDynamicRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagDynamicRespCommentsTagsImplCopyWith<
    _$CommentsTagDynamicRespCommentsTagsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
