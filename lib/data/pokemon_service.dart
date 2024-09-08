import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:pokedex/data/network/list/results.dart';
import 'package:pokedex/data/network/shared/pokemon_stat_response.dart';
import 'package:pokedex/data/network/list/pokemon_name_response.dart';
import 'package:pokedex/data/network/list/pokemon_request.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/presentation/pokemon_domain.dart';

class PokemonService extends PokemonRepository {
  final Dio dio;
  final String baseUrl = "https://pokeapi.co/api/v2/pokemon/";

  PokemonService({required this.dio});

  @override
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request) async {
    final responseList = await dio
        .get("$baseUrl?limit=${request.limit}&offset=${request.offset}");


    final nameResults = PokemonNameResponse.fromJson(responseList.data).results;

    List<PokemonDomain> pokemons = [];

    for (Result result in nameResults) {
      final pokemon = await resultAsPokemonDomain(result.name);
      pokemons.add(pokemon);
    }

    return pokemons;
  }

  Future<PokemonDomain> resultAsPokemonDomain(String name) async {
    final stat = await getPokemonStat(name);
    return PokemonDomain(
        id: "#${NumberFormat("0000").format(stat.id)}",
        name: name,
        sprites:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${stat.id}.png",
        types: stat.types.map((e) => e.type.name).toList());
  }

  Future<PokemonStatResponse> getPokemonStat(String name) async {
    final response = await dio.get("$baseUrl/$name");
    return PokemonStatResponse.fromJson(response.data);
  }
}
