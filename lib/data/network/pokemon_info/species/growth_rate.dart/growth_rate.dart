import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_rate.freezed.dart';
part 'growth_rate.g.dart';

@freezed
class GrowthRate  with _$GrowthRate{

  const factory GrowthRate({required String name ,required String url}) = _GrowthRate;

  factory GrowthRate.fromJson(Map<String ,dynamic> json) => _$GrowthRateFromJson(json);
}