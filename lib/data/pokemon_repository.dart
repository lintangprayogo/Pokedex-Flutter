import 'package:pokedex/data/network/list/pokemon_request.dart';
import 'package:pokedex/presentation/pokemon_domain.dart';

abstract class PokemonRepository {
  Future<List<PokemonDomain>> fetchPokemons(PokemonRequest request);
}
