// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_basic_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonBasicInfoResponse _$PokemonBasicInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonBasicInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonBasicInfoResponse {
  int get id => throw _privateConstructorUsedError;
  List<PokemonTypeSlot> get types => throw _privateConstructorUsedError;
  List<PokemonStat> get stats => throw _privateConstructorUsedError;
  List<AbilitySlot> get abilities => throw _privateConstructorUsedError;
  List<MoveSlot> get moves => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Serializes this PokemonBasicInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonBasicInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonBasicInfoResponseCopyWith<PokemonBasicInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonBasicInfoResponseCopyWith<$Res> {
  factory $PokemonBasicInfoResponseCopyWith(PokemonBasicInfoResponse value,
          $Res Function(PokemonBasicInfoResponse) then) =
      _$PokemonBasicInfoResponseCopyWithImpl<$Res, PokemonBasicInfoResponse>;
  @useResult
  $Res call(
      {int id,
      List<PokemonTypeSlot> types,
      List<PokemonStat> stats,
      List<AbilitySlot> abilities,
      List<MoveSlot> moves,
      int weight,
      int height});
}

/// @nodoc
class _$PokemonBasicInfoResponseCopyWithImpl<$Res,
        $Val extends PokemonBasicInfoResponse>
    implements $PokemonBasicInfoResponseCopyWith<$Res> {
  _$PokemonBasicInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonBasicInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? types = null,
    Object? stats = null,
    Object? abilities = null,
    Object? moves = null,
    Object? weight = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilitySlot>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveSlot>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonBasicInfoResponseImplCopyWith<$Res>
    implements $PokemonBasicInfoResponseCopyWith<$Res> {
  factory _$$PokemonBasicInfoResponseImplCopyWith(
          _$PokemonBasicInfoResponseImpl value,
          $Res Function(_$PokemonBasicInfoResponseImpl) then) =
      __$$PokemonBasicInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<PokemonTypeSlot> types,
      List<PokemonStat> stats,
      List<AbilitySlot> abilities,
      List<MoveSlot> moves,
      int weight,
      int height});
}

/// @nodoc
class __$$PokemonBasicInfoResponseImplCopyWithImpl<$Res>
    extends _$PokemonBasicInfoResponseCopyWithImpl<$Res,
        _$PokemonBasicInfoResponseImpl>
    implements _$$PokemonBasicInfoResponseImplCopyWith<$Res> {
  __$$PokemonBasicInfoResponseImplCopyWithImpl(
      _$PokemonBasicInfoResponseImpl _value,
      $Res Function(_$PokemonBasicInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonBasicInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? types = null,
    Object? stats = null,
    Object? abilities = null,
    Object? moves = null,
    Object? weight = null,
    Object? height = null,
  }) {
    return _then(_$PokemonBasicInfoResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStat>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilitySlot>,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<MoveSlot>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonBasicInfoResponseImpl implements _PokemonBasicInfoResponse {
  const _$PokemonBasicInfoResponseImpl(
      {required this.id,
      required final List<PokemonTypeSlot> types,
      required final List<PokemonStat> stats,
      required final List<AbilitySlot> abilities,
      required final List<MoveSlot> moves,
      required this.weight,
      required this.height})
      : _types = types,
        _stats = stats,
        _abilities = abilities,
        _moves = moves;

  factory _$PokemonBasicInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonBasicInfoResponseImplFromJson(json);

  @override
  final int id;
  final List<PokemonTypeSlot> _types;
  @override
  List<PokemonTypeSlot> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStat> _stats;
  @override
  List<PokemonStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<AbilitySlot> _abilities;
  @override
  List<AbilitySlot> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<MoveSlot> _moves;
  @override
  List<MoveSlot> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  @override
  final int weight;
  @override
  final int height;

  @override
  String toString() {
    return 'PokemonBasicInfoResponse(id: $id, types: $types, stats: $stats, abilities: $abilities, moves: $moves, weight: $weight, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonBasicInfoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_moves),
      weight,
      height);

  /// Create a copy of PokemonBasicInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonBasicInfoResponseImplCopyWith<_$PokemonBasicInfoResponseImpl>
      get copyWith => __$$PokemonBasicInfoResponseImplCopyWithImpl<
          _$PokemonBasicInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonBasicInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonBasicInfoResponse implements PokemonBasicInfoResponse {
  const factory _PokemonBasicInfoResponse(
      {required final int id,
      required final List<PokemonTypeSlot> types,
      required final List<PokemonStat> stats,
      required final List<AbilitySlot> abilities,
      required final List<MoveSlot> moves,
      required final int weight,
      required final int height}) = _$PokemonBasicInfoResponseImpl;

  factory _PokemonBasicInfoResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonBasicInfoResponseImpl.fromJson;

  @override
  int get id;
  @override
  List<PokemonTypeSlot> get types;
  @override
  List<PokemonStat> get stats;
  @override
  List<AbilitySlot> get abilities;
  @override
  List<MoveSlot> get moves;
  @override
  int get weight;
  @override
  int get height;

  /// Create a copy of PokemonBasicInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonBasicInfoResponseImplCopyWith<_$PokemonBasicInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
