import 'dart:io';

import 'package:pokedex/data/network/shared/pokemon_request.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';

abstract class PokemonRepository {
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request);

  Future<PokemonInfoDomain> getPokemonDetailInfo(String name);

  Future<PokemonDomain> searchPokemonByText(String name);

  Future<PokemonDomain> searchPokemonByImage(File image);
}
