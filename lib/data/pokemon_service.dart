import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:intl/intl.dart';
import 'package:pokedex/data/network/pokemon_info/evolution/chain/evolution_chain.dart';
import 'package:pokedex/data/network/pokemon_info/evolution/evolution.dart';
import 'package:pokedex/data/network/pokemon_info/evolution/species_name/species_name.dart';
import 'package:pokedex/data/network/pokemon_info/species/species.dart';
import 'package:pokedex/data/network/pokemon_name/results/results.dart';
import 'package:pokedex/data/network/pokemon_info/pokemon_basic_info_response.dart';
import 'package:pokedex/data/network/pokemon_name/pokemon_name_response.dart';
import 'package:pokedex/data/network/shared/pokemon_request.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/util/extension.dart';

class PokemonService extends PokemonRepository {
  final Dio dio;
  final String baseUrl = "https://pokeapi.co/api/v2/";
  final Gemini client = Gemini.instance;

  PokemonService({required this.dio});

  @override
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request) async {
    final responseList = await dio.get(
        "$baseUrl/pokemon?limit=${request.limit}&offset=${request.offset}");

    final nameResults = PokemonNameResponse.fromJson(responseList.data).results;

    List<PokemonDomain> pokemons = [];

    for (Result result in nameResults) {
      final pokemon = await _getPokemonDomain(result.name);
      pokemons.add(pokemon);
    }

    return pokemons;
  }

  Future<PokemonDomain> _getPokemonDomain(String name) async {
    final basicInfo = await _getPokemonBasicInfo(name);
    return PokemonDomain(
        id: "#${NumberFormat("0000").format(basicInfo.id)}",
        name: name,
        sprites:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${basicInfo.id}.png",
        types: basicInfo.types.map((e) => e.type.name).toList());
  }

  Future<PokemonBasicInfoResponse> _getPokemonBasicInfo(String name) async {
    final response = await dio.get("${baseUrl}pokemon/$name");
    return PokemonBasicInfoResponse.fromJson(response.data);
  }

  Future<Species> _getPokemonSpecies(String name) async {
    final response = await dio.get("$baseUrl/pokemon-species/$name");
    return Species.fromJson(response.data);
  }

  Future<List<List<PokemonDomain>>> fetchEvolutionChain(
      {required String evolutionUrl}) async {
    final response = await dio.get(evolutionUrl);

    final evolution = Evolution.fromJson(response.data);

    List<SpeciesName> pokemonNames = evolution.chain.getAllSpecies();

    List<PokemonDomain> pokemons = [];

    for (var data in pokemonNames) {
      final pokemon = await _getPokemonDomain(data.name);
      pokemons.add(pokemon);
    }

    return _evolutionPair(pokemons);
  }

  @override
  Future<PokemonInfoDomain> getPokemonDetailInfo(String name) async {
    final basicInfo = await _getPokemonBasicInfo(name);
    final species = await _getPokemonSpecies(name);

    final stats = basicInfo.stats
        .map((e) => PokemonStatDomain(
            statName: e.name.replaceAll("-", " ").toTitleCase,
            baseStat: e.baseStat))
        .toList();
    final types = basicInfo.types.map((e) => e.type.name).toList();
    final abilities = basicInfo.abilities.map((e) => e.ability.name).toList();
    final moves = basicInfo.moves.map((e) => e.move.name).toList();
    final evolutionPair =
        await fetchEvolutionChain(evolutionUrl: species.evolutionUrl);

    return PokemonInfoDomain(
        id: "#${NumberFormat("0000").format(basicInfo.id)}",
        name: name,
        sprites:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${basicInfo.id}.png",
        types: types,
        stats: stats,
        abilities: abilities,
        habitatName: species.habitat?.name ?? "",
        height: basicInfo.height,
        moves: moves,
        eggGroups: species.eggGroups.map((e) => e.name).toList(),
        growthRate: species.growthRate.name,
        evolutionPair: evolutionPair,
        weight: basicInfo.hashCode);
  }

  List<List<PokemonDomain>> _evolutionPair(List<PokemonDomain> pokemons) {
    // it will return list of list of pokemon that will be grouped by 2 that is before evo and after eo
    final result = <List<PokemonDomain>>[];
    for (var i = 0; i < pokemons.length; i++) {
      if (i + 1 < pokemons.length) {
        result.add([pokemons[i], pokemons[i + 1]]);
      }
    }

    return result;
  }

  Future<Candidates> identifyByImage({
    required File image,
  }) async {
    final response = await client.textAndImage(
      text:
          "if this image doesn't contain any single pokemon give response \"pokemon not found\", if any pokemon give a name of selected pokemon",
      images: [
        image.readAsBytesSync(),
      ],
    );
    if (response != null) {
      return response;
    }
    throw Exception("Failed to find pokemon");
  }

  @override
  Future<PokemonDomain> searchPokemonByImage(File image) async {
    final candidates = await identifyByImage(image: image);

    String name = "";
    for (final item in candidates.content?.parts ?? []) {
      name += " ${item.text ?? ""}";
    }
    name = name.replaceAll(".", "").replaceAll(" ", "").replaceAll("\n", "").toLowerCase();
    final pokemon = await _getPokemonDomain(name);
    return pokemon;
  }

  @override
  Future<PokemonDomain> searchPokemonByText(String name) async {
    return await _getPokemonDomain(name);
  }
}

extension on EvolutionChain {
  List<SpeciesName> getAllSpecies() {
    List<SpeciesName> list = [];
    list.add(species);
    for (var data in evolveTo) {
      list.addAll(data.getAllSpecies());
    }
    return list;
  }
}
