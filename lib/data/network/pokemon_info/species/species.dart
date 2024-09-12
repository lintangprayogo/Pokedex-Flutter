import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/species/egg_group/egg_group.dart';
import 'package:pokedex/data/network/pokemon_info/species/growth_rate.dart/growth_rate.dart';
import 'package:pokedex/data/network/pokemon_info/species/habitat/habitat.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
  factory Species(
      {@Default(null) Habitat? habitat,
      required GrowthRate growthRate,
      @Default([]) List<EggGroup> eggGroups}) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => Species(
      habitat: Habitat.fromJson(json["habitat"]),
      eggGroups: (json["egg_groups"] as List<dynamic>)
          .map((e) => EggGroup.fromJson(e)).toList(),
      growthRate: GrowthRate.fromJson(
        json["growth_rate"],
      ));
}
