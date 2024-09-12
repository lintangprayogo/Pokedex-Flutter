// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habitat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habitat _$HabitatFromJson(Map<String, dynamic> json) {
  return _Habitat.fromJson(json);
}

/// @nodoc
mixin _$Habitat {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Habitat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Habitat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitatCopyWith<Habitat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitatCopyWith<$Res> {
  factory $HabitatCopyWith(Habitat value, $Res Function(Habitat) then) =
      _$HabitatCopyWithImpl<$Res, Habitat>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$HabitatCopyWithImpl<$Res, $Val extends Habitat>
    implements $HabitatCopyWith<$Res> {
  _$HabitatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Habitat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitatImplCopyWith<$Res> implements $HabitatCopyWith<$Res> {
  factory _$$HabitatImplCopyWith(
          _$HabitatImpl value, $Res Function(_$HabitatImpl) then) =
      __$$HabitatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$HabitatImplCopyWithImpl<$Res>
    extends _$HabitatCopyWithImpl<$Res, _$HabitatImpl>
    implements _$$HabitatImplCopyWith<$Res> {
  __$$HabitatImplCopyWithImpl(
      _$HabitatImpl _value, $Res Function(_$HabitatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Habitat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$HabitatImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitatImpl with DiagnosticableTreeMixin implements _Habitat {
  const _$HabitatImpl({required this.name, required this.url});

  factory _$HabitatImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitatImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Habitat(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Habitat'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of Habitat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitatImplCopyWith<_$HabitatImpl> get copyWith =>
      __$$HabitatImplCopyWithImpl<_$HabitatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitatImplToJson(
      this,
    );
  }
}

abstract class _Habitat implements Habitat {
  const factory _Habitat(
      {required final String name, required final String url}) = _$HabitatImpl;

  factory _Habitat.fromJson(Map<String, dynamic> json) = _$HabitatImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of Habitat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitatImplCopyWith<_$HabitatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
