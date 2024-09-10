part of 'pokemon_info_cubit.dart';

enum PokemonInfoStatus { initial, success, failure }

@freezed
class PokemonInfoState with _$PokemonInfoState {

  factory PokemonInfoState(
      {@Default(PokemonInfoStatus.initial) PokemonInfoStatus status,
      @Default(null) PokemonInfoDomain? info}) = _PokemonInfoState;
      
}
