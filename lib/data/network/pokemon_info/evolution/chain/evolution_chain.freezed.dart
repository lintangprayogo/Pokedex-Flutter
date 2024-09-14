// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvolutionChain _$EvolutionChainFromJson(Map<String, dynamic> json) {
  return _EvolutionChain.fromJson(json);
}

/// @nodoc
mixin _$EvolutionChain {
  SpeciesName get species => throw _privateConstructorUsedError;
  List<EvolutionChain> get evolveTo => throw _privateConstructorUsedError;

  /// Serializes this EvolutionChain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvolutionChainCopyWith<EvolutionChain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionChainCopyWith<$Res> {
  factory $EvolutionChainCopyWith(
          EvolutionChain value, $Res Function(EvolutionChain) then) =
      _$EvolutionChainCopyWithImpl<$Res, EvolutionChain>;
  @useResult
  $Res call({SpeciesName species, List<EvolutionChain> evolveTo});

  $SpeciesNameCopyWith<$Res> get species;
}

/// @nodoc
class _$EvolutionChainCopyWithImpl<$Res, $Val extends EvolutionChain>
    implements $EvolutionChainCopyWith<$Res> {
  _$EvolutionChainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
    Object? evolveTo = null,
  }) {
    return _then(_value.copyWith(
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesName,
      evolveTo: null == evolveTo
          ? _value.evolveTo
          : evolveTo // ignore: cast_nullable_to_non_nullable
              as List<EvolutionChain>,
    ) as $Val);
  }

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesNameCopyWith<$Res> get species {
    return $SpeciesNameCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvolutionChainImplCopyWith<$Res>
    implements $EvolutionChainCopyWith<$Res> {
  factory _$$EvolutionChainImplCopyWith(_$EvolutionChainImpl value,
          $Res Function(_$EvolutionChainImpl) then) =
      __$$EvolutionChainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpeciesName species, List<EvolutionChain> evolveTo});

  @override
  $SpeciesNameCopyWith<$Res> get species;
}

/// @nodoc
class __$$EvolutionChainImplCopyWithImpl<$Res>
    extends _$EvolutionChainCopyWithImpl<$Res, _$EvolutionChainImpl>
    implements _$$EvolutionChainImplCopyWith<$Res> {
  __$$EvolutionChainImplCopyWithImpl(
      _$EvolutionChainImpl _value, $Res Function(_$EvolutionChainImpl) _then)
      : super(_value, _then);

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
    Object? evolveTo = null,
  }) {
    return _then(_$EvolutionChainImpl(
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesName,
      evolveTo: null == evolveTo
          ? _value._evolveTo
          : evolveTo // ignore: cast_nullable_to_non_nullable
              as List<EvolutionChain>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvolutionChainImpl implements _EvolutionChain {
  _$EvolutionChainImpl(
      {required this.species, required final List<EvolutionChain> evolveTo})
      : _evolveTo = evolveTo;

  factory _$EvolutionChainImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionChainImplFromJson(json);

  @override
  final SpeciesName species;
  final List<EvolutionChain> _evolveTo;
  @override
  List<EvolutionChain> get evolveTo {
    if (_evolveTo is EqualUnmodifiableListView) return _evolveTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolveTo);
  }

  @override
  String toString() {
    return 'EvolutionChain(species: $species, evolveTo: $evolveTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionChainImpl &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality().equals(other._evolveTo, _evolveTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, species, const DeepCollectionEquality().hash(_evolveTo));

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionChainImplCopyWith<_$EvolutionChainImpl> get copyWith =>
      __$$EvolutionChainImplCopyWithImpl<_$EvolutionChainImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionChainImplToJson(
      this,
    );
  }
}

abstract class _EvolutionChain implements EvolutionChain {
  factory _EvolutionChain(
      {required final SpeciesName species,
      required final List<EvolutionChain> evolveTo}) = _$EvolutionChainImpl;

  factory _EvolutionChain.fromJson(Map<String, dynamic> json) =
      _$EvolutionChainImpl.fromJson;

  @override
  SpeciesName get species;
  @override
  List<EvolutionChain> get evolveTo;

  /// Create a copy of EvolutionChain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvolutionChainImplCopyWith<_$EvolutionChainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
