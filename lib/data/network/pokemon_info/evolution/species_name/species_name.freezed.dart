// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeciesName _$SpeciesNameFromJson(Map<String, dynamic> json) {
  return _SpeciesName.fromJson(json);
}

/// @nodoc
mixin _$SpeciesName {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SpeciesName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeciesName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeciesNameCopyWith<SpeciesName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesNameCopyWith<$Res> {
  factory $SpeciesNameCopyWith(
          SpeciesName value, $Res Function(SpeciesName) then) =
      _$SpeciesNameCopyWithImpl<$Res, SpeciesName>;
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class _$SpeciesNameCopyWithImpl<$Res, $Val extends SpeciesName>
    implements $SpeciesNameCopyWith<$Res> {
  _$SpeciesNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeciesName
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
abstract class _$$SpeciesNameImplCopyWith<$Res>
    implements $SpeciesNameCopyWith<$Res> {
  factory _$$SpeciesNameImplCopyWith(
          _$SpeciesNameImpl value, $Res Function(_$SpeciesNameImpl) then) =
      __$$SpeciesNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String name});
}

/// @nodoc
class __$$SpeciesNameImplCopyWithImpl<$Res>
    extends _$SpeciesNameCopyWithImpl<$Res, _$SpeciesNameImpl>
    implements _$$SpeciesNameImplCopyWith<$Res> {
  __$$SpeciesNameImplCopyWithImpl(
      _$SpeciesNameImpl _value, $Res Function(_$SpeciesNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeciesName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
  }) {
    return _then(_$SpeciesNameImpl(
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
class _$SpeciesNameImpl implements _SpeciesName {
  const _$SpeciesNameImpl({required this.url, required this.name});

  factory _$SpeciesNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesNameImplFromJson(json);

  @override
  final String url;
  @override
  final String name;

  @override
  String toString() {
    return 'SpeciesName(url: $url, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesNameImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, name);

  /// Create a copy of SpeciesName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesNameImplCopyWith<_$SpeciesNameImpl> get copyWith =>
      __$$SpeciesNameImplCopyWithImpl<_$SpeciesNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesNameImplToJson(
      this,
    );
  }
}

abstract class _SpeciesName implements SpeciesName {
  const factory _SpeciesName(
      {required final String url,
      required final String name}) = _$SpeciesNameImpl;

  factory _SpeciesName.fromJson(Map<String, dynamic> json) =
      _$SpeciesNameImpl.fromJson;

  @override
  String get url;
  @override
  String get name;

  /// Create a copy of SpeciesName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeciesNameImplCopyWith<_$SpeciesNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
