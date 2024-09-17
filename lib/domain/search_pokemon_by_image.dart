import 'dart:io';

import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_domain.dart';

class SearchPokemonByImage {
  final PokemonRepository _pokemonRepository;

  SearchPokemonByImage({required PokemonRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository;

  Future<PokemonDomain> excute(File image) async {
    return await _pokemonRepository.searchPokemonByImage(image);
  }
}
