// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStatResponse _$PokemonStatResponseFromJson(Map<String, dynamic> json) {
  return _PokemonStatResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatResponse {
  int get id => throw _privateConstructorUsedError;
  List<PokemonTypeSlot> get types => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatResponseCopyWith<PokemonStatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatResponseCopyWith<$Res> {
  factory $PokemonStatResponseCopyWith(
          PokemonStatResponse value, $Res Function(PokemonStatResponse) then) =
      _$PokemonStatResponseCopyWithImpl<$Res, PokemonStatResponse>;
  @useResult
  $Res call({int id, List<PokemonTypeSlot> types});
}

/// @nodoc
class _$PokemonStatResponseCopyWithImpl<$Res, $Val extends PokemonStatResponse>
    implements $PokemonStatResponseCopyWith<$Res> {
  _$PokemonStatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? types = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStatResponseImplCopyWith<$Res>
    implements $PokemonStatResponseCopyWith<$Res> {
  factory _$$PokemonStatResponseImplCopyWith(_$PokemonStatResponseImpl value,
          $Res Function(_$PokemonStatResponseImpl) then) =
      __$$PokemonStatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<PokemonTypeSlot> types});
}

/// @nodoc
class __$$PokemonStatResponseImplCopyWithImpl<$Res>
    extends _$PokemonStatResponseCopyWithImpl<$Res, _$PokemonStatResponseImpl>
    implements _$$PokemonStatResponseImplCopyWith<$Res> {
  __$$PokemonStatResponseImplCopyWithImpl(_$PokemonStatResponseImpl _value,
      $Res Function(_$PokemonStatResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? types = null,
  }) {
    return _then(_$PokemonStatResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatResponseImpl implements _PokemonStatResponse {
  const _$PokemonStatResponseImpl(
      {required this.id, required final List<PokemonTypeSlot> types})
      : _types = types;

  factory _$PokemonStatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatResponseImplFromJson(json);

  @override
  final int id;
  final List<PokemonTypeSlot> _types;
  @override
  List<PokemonTypeSlot> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonStatResponse(id: $id, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_types));

  /// Create a copy of PokemonStatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatResponseImplCopyWith<_$PokemonStatResponseImpl> get copyWith =>
      __$$PokemonStatResponseImplCopyWithImpl<_$PokemonStatResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatResponse implements PokemonStatResponse {
  const factory _PokemonStatResponse(
      {required final int id,
      required final List<PokemonTypeSlot> types}) = _$PokemonStatResponseImpl;

  factory _PokemonStatResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonStatResponseImpl.fromJson;

  @override
  int get id;
  @override
  List<PokemonTypeSlot> get types;

  /// Create a copy of PokemonStatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatResponseImplCopyWith<_$PokemonStatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
