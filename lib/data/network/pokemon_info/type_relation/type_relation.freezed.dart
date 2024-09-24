// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypeRelation _$TypeRelationFromJson(Map<String, dynamic> json) {
  return _TypeRelation.fromJson(json);
}

/// @nodoc
mixin _$TypeRelation {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TypeRelation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeRelationCopyWith<TypeRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeRelationCopyWith<$Res> {
  factory $TypeRelationCopyWith(
          TypeRelation value, $Res Function(TypeRelation) then) =
      _$TypeRelationCopyWithImpl<$Res, TypeRelation>;
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class _$TypeRelationCopyWithImpl<$Res, $Val extends TypeRelation>
    implements $TypeRelationCopyWith<$Res> {
  _$TypeRelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeRelation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeRelationImplCopyWith<$Res>
    implements $TypeRelationCopyWith<$Res> {
  factory _$$TypeRelationImplCopyWith(
          _$TypeRelationImpl value, $Res Function(_$TypeRelationImpl) then) =
      __$$TypeRelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class __$$TypeRelationImplCopyWithImpl<$Res>
    extends _$TypeRelationCopyWithImpl<$Res, _$TypeRelationImpl>
    implements _$$TypeRelationImplCopyWith<$Res> {
  __$$TypeRelationImplCopyWithImpl(
      _$TypeRelationImpl _value, $Res Function(_$TypeRelationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeRelation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_$TypeRelationImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeRelationImpl implements _TypeRelation {
  const _$TypeRelationImpl({required this.url, required this.name});

  factory _$TypeRelationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeRelationImplFromJson(json);

  @override
  final String url;
  @override
  final String name;

  @override
  String toString() {
    return 'TypeRelation(url: $url, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeRelationImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, name);

  /// Create a copy of TypeRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeRelationImplCopyWith<_$TypeRelationImpl> get copyWith =>
      __$$TypeRelationImplCopyWithImpl<_$TypeRelationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeRelationImplToJson(
      this,
    );
  }
}

abstract class _TypeRelation implements TypeRelation {
  const factory _TypeRelation(
      {required final String url,
      required final String name}) = _$TypeRelationImpl;

  factory _TypeRelation.fromJson(Map<String, dynamic> json) =
      _$TypeRelationImpl.fromJson;

  @override
  String get url;
  @override
  String get name;

  /// Create a copy of TypeRelation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeRelationImplCopyWith<_$TypeRelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
