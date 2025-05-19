// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_tag_int_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentsTagIntResp _$CommentsTagIntRespFromJson(Map<String, dynamic> json) {
  return _CommentsTagIntResp.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagIntResp {
  CommentsTagIntRespCommentsTags get commentsTags =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentsTagIntResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagIntResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagIntRespCopyWith<CommentsTagIntResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagIntRespCopyWith<$Res> {
  factory $CommentsTagIntRespCopyWith(
    CommentsTagIntResp value,
    $Res Function(CommentsTagIntResp) then,
  ) = _$CommentsTagIntRespCopyWithImpl<$Res, CommentsTagIntResp>;
  @useResult
  $Res call({CommentsTagIntRespCommentsTags commentsTags});

  $CommentsTagIntRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class _$CommentsTagIntRespCopyWithImpl<$Res, $Val extends CommentsTagIntResp>
    implements $CommentsTagIntRespCopyWith<$Res> {
  _$CommentsTagIntRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagIntResp
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
                        as CommentsTagIntRespCommentsTags,
          )
          as $Val,
    );
  }

  /// Create a copy of CommentsTagIntResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsTagIntRespCommentsTagsCopyWith<$Res> get commentsTags {
    return $CommentsTagIntRespCommentsTagsCopyWith<$Res>(_value.commentsTags, (
      value,
    ) {
      return _then(_value.copyWith(commentsTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsTagIntRespImplCopyWith<$Res>
    implements $CommentsTagIntRespCopyWith<$Res> {
  factory _$$CommentsTagIntRespImplCopyWith(
    _$CommentsTagIntRespImpl value,
    $Res Function(_$CommentsTagIntRespImpl) then,
  ) = __$$CommentsTagIntRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentsTagIntRespCommentsTags commentsTags});

  @override
  $CommentsTagIntRespCommentsTagsCopyWith<$Res> get commentsTags;
}

/// @nodoc
class __$$CommentsTagIntRespImplCopyWithImpl<$Res>
    extends _$CommentsTagIntRespCopyWithImpl<$Res, _$CommentsTagIntRespImpl>
    implements _$$CommentsTagIntRespImplCopyWith<$Res> {
  __$$CommentsTagIntRespImplCopyWithImpl(
    _$CommentsTagIntRespImpl _value,
    $Res Function(_$CommentsTagIntRespImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagIntResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentsTags = null}) {
    return _then(
      _$CommentsTagIntRespImpl(
        commentsTags:
            null == commentsTags
                ? _value.commentsTags
                : commentsTags // ignore: cast_nullable_to_non_nullable
                    as CommentsTagIntRespCommentsTags,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagIntRespImpl extends _CommentsTagIntResp {
  const _$CommentsTagIntRespImpl({required this.commentsTags}) : super._();

  factory _$CommentsTagIntRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsTagIntRespImplFromJson(json);

  @override
  final CommentsTagIntRespCommentsTags commentsTags;

  @override
  String toString() {
    return 'CommentsTagIntResp(commentsTags: $commentsTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagIntRespImpl &&
            (identical(other.commentsTags, commentsTags) ||
                other.commentsTags == commentsTags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, commentsTags);

  /// Create a copy of CommentsTagIntResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagIntRespImplCopyWith<_$CommentsTagIntRespImpl> get copyWith =>
      __$$CommentsTagIntRespImplCopyWithImpl<_$CommentsTagIntRespImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagIntRespImplToJson(this);
  }
}

abstract class _CommentsTagIntResp extends CommentsTagIntResp {
  const factory _CommentsTagIntResp({
    required final CommentsTagIntRespCommentsTags commentsTags,
  }) = _$CommentsTagIntRespImpl;
  const _CommentsTagIntResp._() : super._();

  factory _CommentsTagIntResp.fromJson(Map<String, dynamic> json) =
      _$CommentsTagIntRespImpl.fromJson;

  @override
  CommentsTagIntRespCommentsTags get commentsTags;

  /// Create a copy of CommentsTagIntResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagIntRespImplCopyWith<_$CommentsTagIntRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsTagIntRespCommentsTags _$CommentsTagIntRespCommentsTagsFromJson(
  Map<String, dynamic> json,
) {
  return _CommentsTagIntRespCommentsTags.fromJson(json);
}

/// @nodoc
mixin _$CommentsTagIntRespCommentsTags {
  List<int> get data => throw _privateConstructorUsedError;

  /// Serializes this CommentsTagIntRespCommentsTags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsTagIntRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsTagIntRespCommentsTagsCopyWith<CommentsTagIntRespCommentsTags>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsTagIntRespCommentsTagsCopyWith<$Res> {
  factory $CommentsTagIntRespCommentsTagsCopyWith(
    CommentsTagIntRespCommentsTags value,
    $Res Function(CommentsTagIntRespCommentsTags) then,
  ) =
      _$CommentsTagIntRespCommentsTagsCopyWithImpl<
        $Res,
        CommentsTagIntRespCommentsTags
      >;
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class _$CommentsTagIntRespCommentsTagsCopyWithImpl<
  $Res,
  $Val extends CommentsTagIntRespCommentsTags
>
    implements $CommentsTagIntRespCommentsTagsCopyWith<$Res> {
  _$CommentsTagIntRespCommentsTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsTagIntRespCommentsTags
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
                        as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentsTagIntRespCommentsTagsImplCopyWith<$Res>
    implements $CommentsTagIntRespCommentsTagsCopyWith<$Res> {
  factory _$$CommentsTagIntRespCommentsTagsImplCopyWith(
    _$CommentsTagIntRespCommentsTagsImpl value,
    $Res Function(_$CommentsTagIntRespCommentsTagsImpl) then,
  ) = __$$CommentsTagIntRespCommentsTagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class __$$CommentsTagIntRespCommentsTagsImplCopyWithImpl<$Res>
    extends
        _$CommentsTagIntRespCommentsTagsCopyWithImpl<
          $Res,
          _$CommentsTagIntRespCommentsTagsImpl
        >
    implements _$$CommentsTagIntRespCommentsTagsImplCopyWith<$Res> {
  __$$CommentsTagIntRespCommentsTagsImplCopyWithImpl(
    _$CommentsTagIntRespCommentsTagsImpl _value,
    $Res Function(_$CommentsTagIntRespCommentsTagsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentsTagIntRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CommentsTagIntRespCommentsTagsImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsTagIntRespCommentsTagsImpl
    extends _CommentsTagIntRespCommentsTags {
  const _$CommentsTagIntRespCommentsTagsImpl({final List<int> data = const []})
    : _data = data,
      super._();

  factory _$CommentsTagIntRespCommentsTagsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CommentsTagIntRespCommentsTagsImplFromJson(json);

  final List<int> _data;
  @override
  @JsonKey()
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommentsTagIntRespCommentsTags(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsTagIntRespCommentsTagsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CommentsTagIntRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsTagIntRespCommentsTagsImplCopyWith<
    _$CommentsTagIntRespCommentsTagsImpl
  >
  get copyWith => __$$CommentsTagIntRespCommentsTagsImplCopyWithImpl<
    _$CommentsTagIntRespCommentsTagsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsTagIntRespCommentsTagsImplToJson(this);
  }
}

abstract class _CommentsTagIntRespCommentsTags
    extends CommentsTagIntRespCommentsTags {
  const factory _CommentsTagIntRespCommentsTags({final List<int> data}) =
      _$CommentsTagIntRespCommentsTagsImpl;
  const _CommentsTagIntRespCommentsTags._() : super._();

  factory _CommentsTagIntRespCommentsTags.fromJson(Map<String, dynamic> json) =
      _$CommentsTagIntRespCommentsTagsImpl.fromJson;

  @override
  List<int> get data;

  /// Create a copy of CommentsTagIntRespCommentsTags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsTagIntRespCommentsTagsImplCopyWith<
    _$CommentsTagIntRespCommentsTagsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
