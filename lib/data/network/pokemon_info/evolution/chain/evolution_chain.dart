import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/evolution/species_name/species_name.dart';
part 'evolution_chain.freezed.dart';
part 'evolution_chain.g.dart';

@freezed
class EvolutionChain with _$EvolutionChain {
  factory EvolutionChain(
      {required SpeciesName species,
      required List<EvolutionChain> evolveTo}) = _EvolutionChain;

  factory EvolutionChain.fromJson(Map<String, dynamic> json) => EvolutionChain(
        evolveTo: List<EvolutionChain>.from(
            json["evolves_to"].map((x) => EvolutionChain.fromJson(x))),
        species: SpeciesName.fromJson(json["species"]),
      );

}

