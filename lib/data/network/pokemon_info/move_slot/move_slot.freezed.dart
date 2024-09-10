// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoveSlot _$MoveSlotFromJson(Map<String, dynamic> json) {
  return _MoveSlot.fromJson(json);
}

/// @nodoc
mixin _$MoveSlot {
  Move get move => throw _privateConstructorUsedError;

  /// Serializes this MoveSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveSlotCopyWith<MoveSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveSlotCopyWith<$Res> {
  factory $MoveSlotCopyWith(MoveSlot value, $Res Function(MoveSlot) then) =
      _$MoveSlotCopyWithImpl<$Res, MoveSlot>;
  @useResult
  $Res call({Move move});

  $MoveCopyWith<$Res> get move;
}

/// @nodoc
class _$MoveSlotCopyWithImpl<$Res, $Val extends MoveSlot>
    implements $MoveSlotCopyWith<$Res> {
  _$MoveSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move,
    ) as $Val);
  }

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoveCopyWith<$Res> get move {
    return $MoveCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveSlotImplCopyWith<$Res>
    implements $MoveSlotCopyWith<$Res> {
  factory _$$MoveSlotImplCopyWith(
          _$MoveSlotImpl value, $Res Function(_$MoveSlotImpl) then) =
      __$$MoveSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Move move});

  @override
  $MoveCopyWith<$Res> get move;
}

/// @nodoc
class __$$MoveSlotImplCopyWithImpl<$Res>
    extends _$MoveSlotCopyWithImpl<$Res, _$MoveSlotImpl>
    implements _$$MoveSlotImplCopyWith<$Res> {
  __$$MoveSlotImplCopyWithImpl(
      _$MoveSlotImpl _value, $Res Function(_$MoveSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$MoveSlotImpl(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveSlotImpl implements _MoveSlot {
  const _$MoveSlotImpl({required this.move});

  factory _$MoveSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveSlotImplFromJson(json);

  @override
  final Move move;

  @override
  String toString() {
    return 'MoveSlot(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveSlotImpl &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveSlotImplCopyWith<_$MoveSlotImpl> get copyWith =>
      __$$MoveSlotImplCopyWithImpl<_$MoveSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveSlotImplToJson(
      this,
    );
  }
}

abstract class _MoveSlot implements MoveSlot {
  const factory _MoveSlot({required final Move move}) = _$MoveSlotImpl;

  factory _MoveSlot.fromJson(Map<String, dynamic> json) =
      _$MoveSlotImpl.fromJson;

  @override
  Move get move;

  /// Create a copy of MoveSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveSlotImplCopyWith<_$MoveSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
