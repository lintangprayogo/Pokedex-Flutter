
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';

class GetPokemonInfo {
  final PokemonRepository _pokemonRepository;

  GetPokemonInfo({required PokemonRepository pokemonRepository}) : _pokemonRepository = pokemonRepository;

 

  Future<PokemonInfoDomain> excute(String name) async {
    return await _pokemonRepository.getPokemonDetailInfo(name);
  }
}