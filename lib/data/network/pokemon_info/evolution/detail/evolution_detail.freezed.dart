// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvolutionDetail _$EvolutionDetailFromJson(Map<String, dynamic> json) {
  return _EvolutionDetail.fromJson(json);
}

/// @nodoc
mixin _$EvolutionDetail {
  String? get gender => throw _privateConstructorUsedError;
  String? get heldItem => throw _privateConstructorUsedError;
  String? get item => throw _privateConstructorUsedError;
  String? get knownMove => throw _privateConstructorUsedError;
  String? get knownMoveType => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get minAffection => throw _privateConstructorUsedError;
  int? get minBeauty => throw _privateConstructorUsedError;
  int? get minHappiness => throw _privateConstructorUsedError;
  int get minLevel => throw _privateConstructorUsedError;
  bool get needsOverworldRain => throw _privateConstructorUsedError;
  String? get partySpecies => throw _privateConstructorUsedError;
  String? get partyType => throw _privateConstructorUsedError;
  String? get relativePhysicalStats => throw _privateConstructorUsedError;
  String get timeOfDay => throw _privateConstructorUsedError;
  String? get tradeSpecies => throw _privateConstructorUsedError;

  /// Serializes this EvolutionDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EvolutionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EvolutionDetailCopyWith<EvolutionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionDetailCopyWith<$Res> {
  factory $EvolutionDetailCopyWith(
          EvolutionDetail value, $Res Function(EvolutionDetail) then) =
      _$EvolutionDetailCopyWithImpl<$Res, EvolutionDetail>;
  @useResult
  $Res call(
      {String? gender,
      String? heldItem,
      String? item,
      String? knownMove,
      String? knownMoveType,
      String? location,
      int? minAffection,
      int? minBeauty,
      int? minHappiness,
      int minLevel,
      bool needsOverworldRain,
      String? partySpecies,
      String? partyType,
      String? relativePhysicalStats,
      String timeOfDay,
      String? tradeSpecies});
}

/// @nodoc
class _$EvolutionDetailCopyWithImpl<$Res, $Val extends EvolutionDetail>
    implements $EvolutionDetailCopyWith<$Res> {
  _$EvolutionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EvolutionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? heldItem = freezed,
    Object? item = freezed,
    Object? knownMove = freezed,
    Object? knownMoveType = freezed,
    Object? location = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? minHappiness = freezed,
    Object? minLevel = null,
    Object? needsOverworldRain = null,
    Object? partySpecies = freezed,
    Object? partyType = freezed,
    Object? relativePhysicalStats = freezed,
    Object? timeOfDay = null,
    Object? tradeSpecies = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      knownMove: freezed == knownMove
          ? _value.knownMove
          : knownMove // ignore: cast_nullable_to_non_nullable
              as String?,
      knownMoveType: freezed == knownMoveType
          ? _value.knownMoveType
          : knownMoveType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
      needsOverworldRain: null == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool,
      partySpecies: freezed == partySpecies
          ? _value.partySpecies
          : partySpecies // ignore: cast_nullable_to_non_nullable
              as String?,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      tradeSpecies: freezed == tradeSpecies
          ? _value.tradeSpecies
          : tradeSpecies // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvolutionDetailImplCopyWith<$Res>
    implements $EvolutionDetailCopyWith<$Res> {
  factory _$$EvolutionDetailImplCopyWith(_$EvolutionDetailImpl value,
          $Res Function(_$EvolutionDetailImpl) then) =
      __$$EvolutionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? gender,
      String? heldItem,
      String? item,
      String? knownMove,
      String? knownMoveType,
      String? location,
      int? minAffection,
      int? minBeauty,
      int? minHappiness,
      int minLevel,
      bool needsOverworldRain,
      String? partySpecies,
      String? partyType,
      String? relativePhysicalStats,
      String timeOfDay,
      String? tradeSpecies});
}

/// @nodoc
class __$$EvolutionDetailImplCopyWithImpl<$Res>
    extends _$EvolutionDetailCopyWithImpl<$Res, _$EvolutionDetailImpl>
    implements _$$EvolutionDetailImplCopyWith<$Res> {
  __$$EvolutionDetailImplCopyWithImpl(
      _$EvolutionDetailImpl _value, $Res Function(_$EvolutionDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EvolutionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? heldItem = freezed,
    Object? item = freezed,
    Object? knownMove = freezed,
    Object? knownMoveType = freezed,
    Object? location = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? minHappiness = freezed,
    Object? minLevel = null,
    Object? needsOverworldRain = null,
    Object? partySpecies = freezed,
    Object? partyType = freezed,
    Object? relativePhysicalStats = freezed,
    Object? timeOfDay = null,
    Object? tradeSpecies = freezed,
  }) {
    return _then(_$EvolutionDetailImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      knownMove: freezed == knownMove
          ? _value.knownMove
          : knownMove // ignore: cast_nullable_to_non_nullable
              as String?,
      knownMoveType: freezed == knownMoveType
          ? _value.knownMoveType
          : knownMoveType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
      needsOverworldRain: null == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool,
      partySpecies: freezed == partySpecies
          ? _value.partySpecies
          : partySpecies // ignore: cast_nullable_to_non_nullable
              as String?,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      tradeSpecies: freezed == tradeSpecies
          ? _value.tradeSpecies
          : tradeSpecies // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvolutionDetailImpl implements _EvolutionDetail {
  _$EvolutionDetailImpl(
      {this.gender,
      this.heldItem,
      this.item,
      this.knownMove,
      this.knownMoveType,
      this.location,
      this.minAffection,
      this.minBeauty,
      this.minHappiness,
      required this.minLevel,
      required this.needsOverworldRain,
      this.partySpecies,
      this.partyType,
      this.relativePhysicalStats,
      required this.timeOfDay,
      this.tradeSpecies});

  factory _$EvolutionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionDetailImplFromJson(json);

  @override
  final String? gender;
  @override
  final String? heldItem;
  @override
  final String? item;
  @override
  final String? knownMove;
  @override
  final String? knownMoveType;
  @override
  final String? location;
  @override
  final int? minAffection;
  @override
  final int? minBeauty;
  @override
  final int? minHappiness;
  @override
  final int minLevel;
  @override
  final bool needsOverworldRain;
  @override
  final String? partySpecies;
  @override
  final String? partyType;
  @override
  final String? relativePhysicalStats;
  @override
  final String timeOfDay;
  @override
  final String? tradeSpecies;

  @override
  String toString() {
    return 'EvolutionDetail(gender: $gender, heldItem: $heldItem, item: $item, knownMove: $knownMove, knownMoveType: $knownMoveType, location: $location, minAffection: $minAffection, minBeauty: $minBeauty, minHappiness: $minHappiness, minLevel: $minLevel, needsOverworldRain: $needsOverworldRain, partySpecies: $partySpecies, partyType: $partyType, relativePhysicalStats: $relativePhysicalStats, timeOfDay: $timeOfDay, tradeSpecies: $tradeSpecies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionDetailImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.heldItem, heldItem) ||
                other.heldItem == heldItem) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.knownMove, knownMove) ||
                other.knownMove == knownMove) &&
            (identical(other.knownMoveType, knownMoveType) ||
                other.knownMoveType == knownMoveType) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.minAffection, minAffection) ||
                other.minAffection == minAffection) &&
            (identical(other.minBeauty, minBeauty) ||
                other.minBeauty == minBeauty) &&
            (identical(other.minHappiness, minHappiness) ||
                other.minHappiness == minHappiness) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.needsOverworldRain, needsOverworldRain) ||
                other.needsOverworldRain == needsOverworldRain) &&
            (identical(other.partySpecies, partySpecies) ||
                other.partySpecies == partySpecies) &&
            (identical(other.partyType, partyType) ||
                other.partyType == partyType) &&
            (identical(other.relativePhysicalStats, relativePhysicalStats) ||
                other.relativePhysicalStats == relativePhysicalStats) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.tradeSpecies, tradeSpecies) ||
                other.tradeSpecies == tradeSpecies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      heldItem,
      item,
      knownMove,
      knownMoveType,
      location,
      minAffection,
      minBeauty,
      minHappiness,
      minLevel,
      needsOverworldRain,
      partySpecies,
      partyType,
      relativePhysicalStats,
      timeOfDay,
      tradeSpecies);

  /// Create a copy of EvolutionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionDetailImplCopyWith<_$EvolutionDetailImpl> get copyWith =>
      __$$EvolutionDetailImplCopyWithImpl<_$EvolutionDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionDetailImplToJson(
      this,
    );
  }
}

abstract class _EvolutionDetail implements EvolutionDetail {
  factory _EvolutionDetail(
      {final String? gender,
      final String? heldItem,
      final String? item,
      final String? knownMove,
      final String? knownMoveType,
      final String? location,
      final int? minAffection,
      final int? minBeauty,
      final int? minHappiness,
      required final int minLevel,
      required final bool needsOverworldRain,
      final String? partySpecies,
      final String? partyType,
      final String? relativePhysicalStats,
      required final String timeOfDay,
      final String? tradeSpecies}) = _$EvolutionDetailImpl;

  factory _EvolutionDetail.fromJson(Map<String, dynamic> json) =
      _$EvolutionDetailImpl.fromJson;

  @override
  String? get gender;
  @override
  String? get heldItem;
  @override
  String? get item;
  @override
  String? get knownMove;
  @override
  String? get knownMoveType;
  @override
  String? get location;
  @override
  int? get minAffection;
  @override
  int? get minBeauty;
  @override
  int? get minHappiness;
  @override
  int get minLevel;
  @override
  bool get needsOverworldRain;
  @override
  String? get partySpecies;
  @override
  String? get partyType;
  @override
  String? get relativePhysicalStats;
  @override
  String get timeOfDay;
  @override
  String? get tradeSpecies;

  /// Create a copy of EvolutionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EvolutionDetailImplCopyWith<_$EvolutionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
