
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/species/growth_rate.dart/growth_rate.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
  factory Species({required GrowthRate growthRate}) = _Species;

 factory Species.fromJson(Map<String, dynamic> json) =>
      Species(growthRate: GrowthRate.fromJson(json["growth_rate"]));
}
