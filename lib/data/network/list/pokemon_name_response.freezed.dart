// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_name_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonNameResponse _$PokemonNameResponseFromJson(Map<String, dynamic> json) {
  return _PokemonNameResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonNameResponse {
  int get count => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonNameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonNameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonNameResponseCopyWith<PokemonNameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonNameResponseCopyWith<$Res> {
  factory $PokemonNameResponseCopyWith(
          PokemonNameResponse value, $Res Function(PokemonNameResponse) then) =
      _$PokemonNameResponseCopyWithImpl<$Res, PokemonNameResponse>;
  @useResult
  $Res call({int count, List<Result> results});
}

/// @nodoc
class _$PokemonNameResponseCopyWithImpl<$Res, $Val extends PokemonNameResponse>
    implements $PokemonNameResponseCopyWith<$Res> {
  _$PokemonNameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonNameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonNameResponseImplCopyWith<$Res>
    implements $PokemonNameResponseCopyWith<$Res> {
  factory _$$PokemonNameResponseImplCopyWith(_$PokemonNameResponseImpl value,
          $Res Function(_$PokemonNameResponseImpl) then) =
      __$$PokemonNameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Result> results});
}

/// @nodoc
class __$$PokemonNameResponseImplCopyWithImpl<$Res>
    extends _$PokemonNameResponseCopyWithImpl<$Res, _$PokemonNameResponseImpl>
    implements _$$PokemonNameResponseImplCopyWith<$Res> {
  __$$PokemonNameResponseImplCopyWithImpl(_$PokemonNameResponseImpl _value,
      $Res Function(_$PokemonNameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonNameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$PokemonNameResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonNameResponseImpl
    with DiagnosticableTreeMixin
    implements _PokemonNameResponse {
  const _$PokemonNameResponseImpl(
      {required this.count, required final List<Result> results})
      : _results = results;

  factory _$PokemonNameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonNameResponseImplFromJson(json);

  @override
  final int count;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonNameResponse(count: $count, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonNameResponse'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonNameResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonNameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonNameResponseImplCopyWith<_$PokemonNameResponseImpl> get copyWith =>
      __$$PokemonNameResponseImplCopyWithImpl<_$PokemonNameResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonNameResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonNameResponse implements PokemonNameResponse {
  const factory _PokemonNameResponse(
      {required final int count,
      required final List<Result> results}) = _$PokemonNameResponseImpl;

  factory _PokemonNameResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonNameResponseImpl.fromJson;

  @override
  int get count;
  @override
  List<Result> get results;

  /// Create a copy of PokemonNameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonNameResponseImplCopyWith<_$PokemonNameResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
