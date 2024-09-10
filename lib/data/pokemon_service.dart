import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:pokedex/data/network/pokemon_info/species/species.dart';
import 'package:pokedex/data/network/pokemon_name/results/results.dart';
import 'package:pokedex/data/network/pokemon_info/pokemon_basic_info_response.dart';
import 'package:pokedex/data/network/pokemon_name/pokemon_name_response.dart';
import 'package:pokedex/data/network/shared/pokemon_request.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';

class PokemonService extends PokemonRepository {
  final Dio dio;
  final String baseUrl = "https://pokeapi.co/api/v2/";

  PokemonService({required this.dio});

  @override
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request) async {
    final responseList = await dio
        .get("$baseUrl/pokemon?limit=${request.limit}&offset=${request.offset}");

    final nameResults = PokemonNameResponse.fromJson(responseList.data).results;

    List<PokemonDomain> pokemons = [];

    for (Result result in nameResults) {
      final pokemon = await _resultAsPokemonDomain(result.name);
      pokemons.add(pokemon);
    }

    return pokemons;
  }

  Future<PokemonDomain> _resultAsPokemonDomain(String name) async {
    final basicInfo = await _getPokemonBasicInfo(name);
    return PokemonDomain(
        id: "#${NumberFormat("0000").format(basicInfo.id)}",
        name: name,
        sprites:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${basicInfo.id}.png",
        types: basicInfo.types.map((e) => e.type.name).toList());
  }

  Future<PokemonBasicInfoResponse> _getPokemonBasicInfo(String name) async {
    final response = await dio.get("$baseUrl/pokemon/$name");
    return PokemonBasicInfoResponse.fromJson(response.data);
  }

  Future<Species> _getPokemonSpecies(String name) async {
    final response = await dio.get("$baseUrl/pokemon-species/$name");
    return Species.fromJson(response.data);
  }

  @override
  Future<PokemonInfoDomain> getPokemonDetailInfo(String name) async {
    final basicInfo = await _getPokemonBasicInfo(name);
    final species = await _getPokemonSpecies(name);

    final stats = <PokemonStatDomain>[];
    final types = basicInfo.types.map((e) => e.type.name).toList();
    final abilities = basicInfo.abilities.map((e) => e.ability.name).toList();
    final moves = basicInfo.moves.map((e) => e.move.name).toList();

    return PokemonInfoDomain(
        id: "#${NumberFormat("0000").format(basicInfo.id)}",
        name: name,
        sprites:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${basicInfo.id}.png",
        types: types,
        stats: stats,
        abilities: abilities,
        habitatName: "",
        height: basicInfo.height,
        moves: moves,
        eggGroups: [],
        growthRate: species.growthRate.name,
        weight: basicInfo.hashCode);
  }
}
