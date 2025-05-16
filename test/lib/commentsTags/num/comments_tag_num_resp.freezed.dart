// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_tag_num_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsTagNumResp _$CommentsTagNumRespFromJson(Map<String, dynamic> json) {
  return _CommentsTagNumResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagNumResp {
  CommentsTagNumRespCommentsTags get commentsTags =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsTagNumResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagNumResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagNumRespCopyWith<CommentsTagNumResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagNumRespCopyWith<$Res> {
  factory $CommentsTagNumRespCopyWith(
    CommentsTagNumResp value,
    $Res Function(CommentsTagNumResp) then,
  ) = _$CommentsTagNumRespCopyWithImpl<$Res, CommentsTagNumResp>;
  @useResult
  $Res call({CommentsTagNumRespCommentsTags commentsTags});

  $CommentsTagNumRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class _$CommentsTagNumRespCopyWithImpl<$Res, $Val extends CommentsTagNumResp>
    implements $CommentsTagNumRespCopyWith<$Res> {
  _$CommentsTagNumRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagNumResp
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
                        as CommentsTagNumRespCommentsTags,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsTagNumResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagNumRespCommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagNumRespCommentsTagsCopyWith<$Res>(_value.commentsTags, (
      value,
    ) {
      return _then(_value.copyWith(commentsTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsTagNumRespImplCopyWith<$Res>
    implements $CommentsTagNumRespCopyWith<$Res> {
  factory _$$CommentsTagNumRespImplCopyWith(
    _$CommentsTagNumRespImpl value,
    $Res Function(_$CommentsTagNumRespImpl) then,
  ) = __$$CommentsTagNumRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsTagNumRespCommentsTags commentsTags});

  @override
  $CommentsTagNumRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class __$$CommentsTagNumRespImplCopyWithImpl<$Res>
    extends _$CommentsTagNumRespCopyWithImpl<$Res, _$CommentsTagNumRespImpl>
    implements _$$CommentsTagNumRespImplCopyWith<$Res> {
  __$$CommentsTagNumRespImplCopyWithImpl(
    _$CommentsTagNumRespImpl _value,
    $Res Function(_$CommentsTagNumRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagNumResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _$CommentsTagNumRespImpl(
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTagNumRespCommentsTags,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagNumRespImpl extends _CommentsTagNumResp {
  const _$CommentsTagNumRespImpl({required this.commentsTags}) : super._();

  factory _$CommentsTagNumRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagNumRespImplFromJson(json);

  @override
  final CommentsTagNumRespCommentsTags commentsTags;

  @override
  String toString() {
    return 'CommentsTagNumResp(commentsTags: $commentsTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagNumRespImpl &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsTags);

  /// Create a copy of CommentsTagNumResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagNumRespImplCopyWith<_$CommentsTagNumRespImpl> get copyWith =>
      __$$CommentsTagNumRespImplCopyWithImpl<_$CommentsTagNumRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagNumRespImplToJson(this);
  }
}

abstract class _CommentsTagNumResp extends CommentsTagNumResp {
  const factory _CommentsTagNumResp({
    required final CommentsTagNumRespCommentsTags commentsTags,
  }) = _$CommentsTagNumRespImpl;
  const _CommentsTagNumResp._() : super._();

  factory _CommentsTagNumResp.fromJson(Map<String, dynamic> json) =
      _$CommentsTagNumRespImpl.fromJson;

  @override
  CommentsTagNumRespCommentsTags get commentsTags;

  /// Create a copy of CommentsTagNumResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagNumRespImplCopyWith<_$CommentsTagNumRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsTagNumRespCommentsTags _$CommentsTagNumRespCommentsTagsFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagNumRespCommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagNumRespCommentsTags {
  // Parse Null value as dynamic
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTagNumRespCommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagNumRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagNumRespCommentsTagsCopyWith<CommentsTagNumRespCommentsTags>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagNumRespCommentsTagsCopyWith<$Res> {
  factory $CommentsTagNumRespCommentsTagsCopyWith(
    CommentsTagNumRespCommentsTags value,
    $Res Function(CommentsTagNumRespCommentsTags) then,
  ) =
      _$CommentsTagNumRespCommentsTagsCopyWithImpl<
        $Res,
        CommentsTagNumRespCommentsTags
      >;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class _$CommentsTagNumRespCommentsTagsCopyWithImpl<
  $Res,
  $Val extends CommentsTagNumRespCommentsTags
>
    implements $CommentsTagNumRespCommentsTagsCopyWith<$Res> {
  _$CommentsTagNumRespCommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagNumRespCommentsTags
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
abstract class _$$CommentsTagNumRespCommentsTagsImplCopyWith<$Res>
    implements $CommentsTagNumRespCommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagNumRespCommentsTagsImplCopyWith(
    _$CommentsTagNumRespCommentsTagsImpl value,
    $Res Function(_$CommentsTagNumRespCommentsTagsImpl) then,
  ) = __$$CommentsTagNumRespCommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$CommentsTagNumRespCommentsTagsImplCopyWithImpl<$Res>
    extends
        _$CommentsTagNumRespCommentsTagsCopyWithImpl<
          $Res,
          _$CommentsTagNumRespCommentsTagsImpl
        >
    implements _$$CommentsTagNumRespCommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagNumRespCommentsTagsImplCopyWithImpl(
    _$CommentsTagNumRespCommentsTagsImpl _value,
    $Res Function(_$CommentsTagNumRespCommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagNumRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagNumRespCommentsTagsImpl(
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
class _$CommentsTagNumRespCommentsTagsImpl
    extends _CommentsTagNumRespCommentsTags {
  const _$CommentsTagNumRespCommentsTagsImpl({
    final List<dynamic> data = const [],
  }) : _data = data,
       super._();

  factory _$CommentsTagNumRespCommentsTagsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsTagNumRespCommentsTagsImplFromJson(json);

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
    return 'CommentsTagNumRespCommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagNumRespCommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTagNumRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagNumRespCommentsTagsImplCopyWith<
    _$CommentsTagNumRespCommentsTagsImpl
  >
  get copyWith => __$$CommentsTagNumRespCommentsTagsImplCopyWithImpl<
    _$CommentsTagNumRespCommentsTagsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagNumRespCommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTagNumRespCommentsTags
    extends CommentsTagNumRespCommentsTags {
  const factory _CommentsTagNumRespCommentsTags({final List<dynamic> data}) =
      _$CommentsTagNumRespCommentsTagsImpl;
  const _CommentsTagNumRespCommentsTags._() : super._();

  factory _CommentsTagNumRespCommentsTags.fromJson(Map<String, dynamic> json) =
      _$CommentsTagNumRespCommentsTagsImpl.fromJson;

  // Parse Null value as dynamic
  @override
  List<dynamic> get data;

  /// Create a copy of CommentsTagNumRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagNumRespCommentsTagsImplCopyWith<
    _$CommentsTagNumRespCommentsTagsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
