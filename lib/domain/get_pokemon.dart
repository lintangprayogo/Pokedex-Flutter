
import 'package:pokedex/data/network/shared/pokemon_request.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_domain.dart';

class GetPokemon {
  final PokemonRepository _pokemonRepository;

  GetPokemon({required PokemonRepository pokemonRepository}) : _pokemonRepository = pokemonRepository;

 

  Future<List<PokemonDomain>> excute(PokemonRequest request) async {
    return await _pokemonRepository.fetchPokemons(request);
  }
}