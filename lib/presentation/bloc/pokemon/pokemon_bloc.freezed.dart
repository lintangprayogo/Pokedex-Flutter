// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonState {
  PokemonStatus get status => throw _privateConstructorUsedError;
  List<PokemonDomain> get pokemons => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call(
      {PokemonStatus status,
      List<PokemonDomain> pokemons,
      bool hasReachedMax,
      int offset});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemons = null,
    Object? hasReachedMax = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStatus,
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDomain>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStateImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$PokemonStateImplCopyWith(
          _$PokemonStateImpl value, $Res Function(_$PokemonStateImpl) then) =
      __$$PokemonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonStatus status,
      List<PokemonDomain> pokemons,
      bool hasReachedMax,
      int offset});
}

/// @nodoc
class __$$PokemonStateImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonStateImpl>
    implements _$$PokemonStateImplCopyWith<$Res> {
  __$$PokemonStateImplCopyWithImpl(
      _$PokemonStateImpl _value, $Res Function(_$PokemonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemons = null,
    Object? hasReachedMax = null,
    Object? offset = null,
  }) {
    return _then(_$PokemonStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStatus,
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDomain>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PokemonStateImpl implements _PokemonState {
  _$PokemonStateImpl(
      {this.status = PokemonStatus.initial,
      final List<PokemonDomain> pokemons = const <PokemonDomain>[],
      this.hasReachedMax = false,
      this.offset = 0})
      : _pokemons = pokemons;

  @override
  @JsonKey()
  final PokemonStatus status;
  final List<PokemonDomain> _pokemons;
  @override
  @JsonKey()
  List<PokemonDomain> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'PokemonState(status: $status, pokemons: $pokemons, hasReachedMax: $hasReachedMax, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_pokemons), hasReachedMax, offset);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      __$$PokemonStateImplCopyWithImpl<_$PokemonStateImpl>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  factory _PokemonState(
      {final PokemonStatus status,
      final List<PokemonDomain> pokemons,
      final bool hasReachedMax,
      final int offset}) = _$PokemonStateImpl;

  @override
  PokemonStatus get status;
  @override
  List<PokemonDomain> get pokemons;
  @override
  bool get hasReachedMax;
  @override
  int get offset;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
