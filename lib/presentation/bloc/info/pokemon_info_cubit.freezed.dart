// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonInfoState {
  PokemonInfoStatus get status => throw _privateConstructorUsedError;
  PokemonInfoDomain? get info => throw _privateConstructorUsedError;

  /// Create a copy of PokemonInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonInfoStateCopyWith<PokemonInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonInfoStateCopyWith<$Res> {
  factory $PokemonInfoStateCopyWith(
          PokemonInfoState value, $Res Function(PokemonInfoState) then) =
      _$PokemonInfoStateCopyWithImpl<$Res, PokemonInfoState>;
  @useResult
  $Res call({PokemonInfoStatus status, PokemonInfoDomain? info});
}

/// @nodoc
class _$PokemonInfoStateCopyWithImpl<$Res, $Val extends PokemonInfoState>
    implements $PokemonInfoStateCopyWith<$Res> {
  _$PokemonInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonInfoStatus,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PokemonInfoDomain?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonInfoStateImplCopyWith<$Res>
    implements $PokemonInfoStateCopyWith<$Res> {
  factory _$$PokemonInfoStateImplCopyWith(_$PokemonInfoStateImpl value,
          $Res Function(_$PokemonInfoStateImpl) then) =
      __$$PokemonInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonInfoStatus status, PokemonInfoDomain? info});
}

/// @nodoc
class __$$PokemonInfoStateImplCopyWithImpl<$Res>
    extends _$PokemonInfoStateCopyWithImpl<$Res, _$PokemonInfoStateImpl>
    implements _$$PokemonInfoStateImplCopyWith<$Res> {
  __$$PokemonInfoStateImplCopyWithImpl(_$PokemonInfoStateImpl _value,
      $Res Function(_$PokemonInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? info = freezed,
  }) {
    return _then(_$PokemonInfoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonInfoStatus,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PokemonInfoDomain?,
    ));
  }
}

/// @nodoc

class _$PokemonInfoStateImpl implements _PokemonInfoState {
  _$PokemonInfoStateImpl(
      {this.status = PokemonInfoStatus.initial, this.info = null});

  @override
  @JsonKey()
  final PokemonInfoStatus status;
  @override
  @JsonKey()
  final PokemonInfoDomain? info;

  @override
  String toString() {
    return 'PokemonInfoState(status: $status, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, info);

  /// Create a copy of PokemonInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonInfoStateImplCopyWith<_$PokemonInfoStateImpl> get copyWith =>
      __$$PokemonInfoStateImplCopyWithImpl<_$PokemonInfoStateImpl>(
          this, _$identity);
}

abstract class _PokemonInfoState implements PokemonInfoState {
  factory _PokemonInfoState(
      {final PokemonInfoStatus status,
      final PokemonInfoDomain? info}) = _$PokemonInfoStateImpl;

  @override
  PokemonInfoStatus get status;
  @override
  PokemonInfoDomain? get info;

  /// Create a copy of PokemonInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonInfoStateImplCopyWith<_$PokemonInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
