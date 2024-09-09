import 'package:pokedex/data/network/list/pokemon_request.dart';
import 'package:pokedex/domain/pokemon_domain.dart';

abstract class PokemonRepository {
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request);
}
