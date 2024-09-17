part of 'pokemon_search_cubit.dart';


@freezed
class PokemonSearchState with _$PokemonSearchState {
  factory PokemonSearchState({@Default(Status.initial) Status status,@Default(null) PokemonDomain? pokemon , @Default("") String error }) = _PokemonSearchState;
}
