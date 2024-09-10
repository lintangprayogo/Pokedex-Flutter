// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  GrowthRate get growthRate => throw _privateConstructorUsedError;

  /// Serializes this Species to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res, Species>;
  @useResult
  $Res call({GrowthRate growthRate});

  $GrowthRateCopyWith<$Res> get growthRate;
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res, $Val extends Species>
    implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthRate = null,
  }) {
    return _then(_value.copyWith(
      growthRate: null == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as GrowthRate,
    ) as $Val);
  }

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrowthRateCopyWith<$Res> get growthRate {
    return $GrowthRateCopyWith<$Res>(_value.growthRate, (value) {
      return _then(_value.copyWith(growthRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpeciesImplCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$SpeciesImplCopyWith(
          _$SpeciesImpl value, $Res Function(_$SpeciesImpl) then) =
      __$$SpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GrowthRate growthRate});

  @override
  $GrowthRateCopyWith<$Res> get growthRate;
}

/// @nodoc
class __$$SpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesCopyWithImpl<$Res, _$SpeciesImpl>
    implements _$$SpeciesImplCopyWith<$Res> {
  __$$SpeciesImplCopyWithImpl(
      _$SpeciesImpl _value, $Res Function(_$SpeciesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthRate = null,
  }) {
    return _then(_$SpeciesImpl(
      growthRate: null == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as GrowthRate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesImpl implements _Species {
  _$SpeciesImpl({required this.growthRate});

  factory _$SpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesImplFromJson(json);

  @override
  final GrowthRate growthRate;

  @override
  String toString() {
    return 'Species(growthRate: $growthRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesImpl &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, growthRate);

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      __$$SpeciesImplCopyWithImpl<_$SpeciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesImplToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  factory _Species({required final GrowthRate growthRate}) = _$SpeciesImpl;

  factory _Species.fromJson(Map<String, dynamic> json) = _$SpeciesImpl.fromJson;

  @override
  GrowthRate get growthRate;

  /// Create a copy of Species
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
