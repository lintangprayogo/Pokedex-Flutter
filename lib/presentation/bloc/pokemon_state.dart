part of 'pokemon_bloc.dart';

enum PokemonStatus { initial, success, failure }

@freezed
class PokemonState with _$PokemonState {

   factory PokemonState({
    @Default(PokemonStatus.initial) PokemonStatus status,
    @Default(<PokemonDomain>[]) List<PokemonDomain> pokemons,
    @Default(false) bool hasReachedMax,
    @Default(0) int offset}) = _PokemonState;
  
}