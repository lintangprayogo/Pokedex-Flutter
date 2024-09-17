// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonSearchState {
  Status get status => throw _privateConstructorUsedError;
  PokemonDomain? get pokemon => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSearchStateCopyWith<PokemonSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSearchStateCopyWith<$Res> {
  factory $PokemonSearchStateCopyWith(
          PokemonSearchState value, $Res Function(PokemonSearchState) then) =
      _$PokemonSearchStateCopyWithImpl<$Res, PokemonSearchState>;
  @useResult
  $Res call({Status status, PokemonDomain? pokemon, String error});
}

/// @nodoc
class _$PokemonSearchStateCopyWithImpl<$Res, $Val extends PokemonSearchState>
    implements $PokemonSearchStateCopyWith<$Res> {
  _$PokemonSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonDomain?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSearchStateImplCopyWith<$Res>
    implements $PokemonSearchStateCopyWith<$Res> {
  factory _$$PokemonSearchStateImplCopyWith(_$PokemonSearchStateImpl value,
          $Res Function(_$PokemonSearchStateImpl) then) =
      __$$PokemonSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, PokemonDomain? pokemon, String error});
}

/// @nodoc
class __$$PokemonSearchStateImplCopyWithImpl<$Res>
    extends _$PokemonSearchStateCopyWithImpl<$Res, _$PokemonSearchStateImpl>
    implements _$$PokemonSearchStateImplCopyWith<$Res> {
  __$$PokemonSearchStateImplCopyWithImpl(_$PokemonSearchStateImpl _value,
      $Res Function(_$PokemonSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = freezed,
    Object? error = null,
  }) {
    return _then(_$PokemonSearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonDomain?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonSearchStateImpl implements _PokemonSearchState {
  _$PokemonSearchStateImpl(
      {this.status = Status.initial, this.pokemon = null, this.error = ""});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final PokemonDomain? pokemon;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'PokemonSearchState(status: $status, pokemon: $pokemon, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pokemon, error);

  /// Create a copy of PokemonSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSearchStateImplCopyWith<_$PokemonSearchStateImpl> get copyWith =>
      __$$PokemonSearchStateImplCopyWithImpl<_$PokemonSearchStateImpl>(
          this, _$identity);
}

abstract class _PokemonSearchState implements PokemonSearchState {
  factory _PokemonSearchState(
      {final Status status,
      final PokemonDomain? pokemon,
      final String error}) = _$PokemonSearchStateImpl;

  @override
  Status get status;
  @override
  PokemonDomain? get pokemon;
  @override
  String get error;

  /// Create a copy of PokemonSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSearchStateImplCopyWith<_$PokemonSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
