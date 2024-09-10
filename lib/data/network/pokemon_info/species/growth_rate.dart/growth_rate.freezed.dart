// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GrowthRate _$GrowthRateFromJson(Map<String, dynamic> json) {
  return _GrowthRate.fromJson(json);
}

/// @nodoc
mixin _$GrowthRate {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this GrowthRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrowthRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrowthRateCopyWith<GrowthRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthRateCopyWith<$Res> {
  factory $GrowthRateCopyWith(
          GrowthRate value, $Res Function(GrowthRate) then) =
      _$GrowthRateCopyWithImpl<$Res, GrowthRate>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$GrowthRateCopyWithImpl<$Res, $Val extends GrowthRate>
    implements $GrowthRateCopyWith<$Res> {
  _$GrowthRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrowthRate
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
abstract class _$$GrowthRateImplCopyWith<$Res>
    implements $GrowthRateCopyWith<$Res> {
  factory _$$GrowthRateImplCopyWith(
          _$GrowthRateImpl value, $Res Function(_$GrowthRateImpl) then) =
      __$$GrowthRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$GrowthRateImplCopyWithImpl<$Res>
    extends _$GrowthRateCopyWithImpl<$Res, _$GrowthRateImpl>
    implements _$$GrowthRateImplCopyWith<$Res> {
  __$$GrowthRateImplCopyWithImpl(
      _$GrowthRateImpl _value, $Res Function(_$GrowthRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrowthRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$GrowthRateImpl(
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
class _$GrowthRateImpl with DiagnosticableTreeMixin implements _GrowthRate {
  const _$GrowthRateImpl({required this.name, required this.url});

  factory _$GrowthRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthRateImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GrowthRate(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GrowthRate'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthRateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of GrowthRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthRateImplCopyWith<_$GrowthRateImpl> get copyWith =>
      __$$GrowthRateImplCopyWithImpl<_$GrowthRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthRateImplToJson(
      this,
    );
  }
}

abstract class _GrowthRate implements GrowthRate {
  const factory _GrowthRate(
      {required final String name,
      required final String url}) = _$GrowthRateImpl;

  factory _GrowthRate.fromJson(Map<String, dynamic> json) =
      _$GrowthRateImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of GrowthRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrowthRateImplCopyWith<_$GrowthRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
