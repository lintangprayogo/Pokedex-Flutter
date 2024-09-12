import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'habitat.freezed.dart';
part 'habitat.g.dart';

@freezed
class Habitat  with _$Habitat{

  const factory Habitat({required String name ,required String url}) = _Habitat;

  factory Habitat.fromJson(Map<String ,dynamic> json) => _$HabitatFromJson(json);
}