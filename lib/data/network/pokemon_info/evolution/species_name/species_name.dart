import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_name.g.dart';
part 'species_name.freezed.dart';

@freezed
class SpeciesName with _$SpeciesName {
    const factory SpeciesName({
    required String url,
    required String name,
  }) = _SpeciesName ;

  factory SpeciesName.fromJson(Map<String, dynamic> json) => _$SpeciesNameFromJson(json);
}