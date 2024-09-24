import 'package:pokedex/domain/damage_relation_domain.dart';
import 'package:pokedex/domain/pokemon_domain.dart';

class PokemonInfoDomain {
  final String id;
  final String name;
  final String sprites;
  final List<String> types;
  final List<PokemonStatDomain> stats;
  final int height;
  final int weight;
  final String habitatName;
  final List<String> eggGroups;
  final List<String> abilities;
  final List<String> moves;
  final String growthRate;
  final List<List<PokemonDomain>> evolutionPair;
  final DamageRelationDomain damageRelation;

  const PokemonInfoDomain(
      {required this.id,
      required this.name,
      required this.sprites,
      required this.types,
      required this.stats,
      required this.height,
      required this.weight,
      required this.habitatName,
      required this.eggGroups,
      required this.abilities,
      required this.growthRate,
      required this.moves,
      required this.evolutionPair,
      required this.damageRelation
      });
}

class PokemonStatDomain {
  final String statName;
  final int baseStat;

  PokemonStatDomain({required this.statName, required this.baseStat});
}
