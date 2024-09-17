import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_domain.dart';

class SearchPokemonByText {
  final PokemonRepository _pokemonRepository;

  SearchPokemonByText({required PokemonRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository;

  Future<PokemonDomain> excute(String text) async {
    return await _pokemonRepository.searchPokemonByText(text);
  }
}
