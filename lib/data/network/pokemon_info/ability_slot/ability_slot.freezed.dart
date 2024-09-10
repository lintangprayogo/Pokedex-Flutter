// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbilitySlot _$AbilitySlotFromJson(Map<String, dynamic> json) {
  return _AbilitySlot.fromJson(json);
}

/// @nodoc
mixin _$AbilitySlot {
  int get slot => throw _privateConstructorUsedError;
  Ability get ability => throw _privateConstructorUsedError;

  /// Serializes this AbilitySlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilitySlotCopyWith<AbilitySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitySlotCopyWith<$Res> {
  factory $AbilitySlotCopyWith(
          AbilitySlot value, $Res Function(AbilitySlot) then) =
      _$AbilitySlotCopyWithImpl<$Res, AbilitySlot>;
  @useResult
  $Res call({int slot, Ability ability});

  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilitySlotCopyWithImpl<$Res, $Val extends AbilitySlot>
    implements $AbilitySlotCopyWith<$Res> {
  _$AbilitySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ) as $Val);
  }

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res> get ability {
    return $AbilityCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbilitySlotImplCopyWith<$Res>
    implements $AbilitySlotCopyWith<$Res> {
  factory _$$AbilitySlotImplCopyWith(
          _$AbilitySlotImpl value, $Res Function(_$AbilitySlotImpl) then) =
      __$$AbilitySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Ability ability});

  @override
  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class __$$AbilitySlotImplCopyWithImpl<$Res>
    extends _$AbilitySlotCopyWithImpl<$Res, _$AbilitySlotImpl>
    implements _$$AbilitySlotImplCopyWith<$Res> {
  __$$AbilitySlotImplCopyWithImpl(
      _$AbilitySlotImpl _value, $Res Function(_$AbilitySlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_$AbilitySlotImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilitySlotImpl implements _AbilitySlot {
  _$AbilitySlotImpl({required this.slot, required this.ability});

  factory _$AbilitySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilitySlotImplFromJson(json);

  @override
  final int slot;
  @override
  final Ability ability;

  @override
  String toString() {
    return 'AbilitySlot(slot: $slot, ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilitySlotImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, ability);

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilitySlotImplCopyWith<_$AbilitySlotImpl> get copyWith =>
      __$$AbilitySlotImplCopyWithImpl<_$AbilitySlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilitySlotImplToJson(
      this,
    );
  }
}

abstract class _AbilitySlot implements AbilitySlot {
  factory _AbilitySlot(
      {required final int slot,
      required final Ability ability}) = _$AbilitySlotImpl;

  factory _AbilitySlot.fromJson(Map<String, dynamic> json) =
      _$AbilitySlotImpl.fromJson;

  @override
  int get slot;
  @override
  Ability get ability;

  /// Create a copy of AbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilitySlotImplCopyWith<_$AbilitySlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
