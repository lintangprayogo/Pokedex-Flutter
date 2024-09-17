part of 'pokemon_bloc.dart';


@freezed
class PokemonState with _$PokemonState {
  factory PokemonState(
      {@Default(Status.loading) Status status,
      @Default(<PokemonDomain>[]) List<PokemonDomain> pokemons,
      @Default(false) bool hasReachedMax,
      @Default(0) int offset}) = _PokemonState;
}
