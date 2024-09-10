import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/shared/pokemon_request.dart';
import 'package:pokedex/domain/get_pokemon.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'pokemon_bloc.freezed.dart';
part 'pokemon_state.dart';
part 'pokemon_event.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final GetPokemon _getPokemon;

  PokemonBloc(this._getPokemon) : super(PokemonState()) {
    on<PokemonEvent>(_onPokemonsFetched,
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onPokemonsFetched(
      PokemonEvent event, Emitter<PokemonState> emit) async {
    if (state.hasReachedMax) return;

    try {
      final pokemons = await _getPokemon
          .excute(PokemonRequest(offset: state.offset));

      return pokemons.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(state.copyWith(
              status: PokemonStatus.success,
              pokemons: state.pokemons + pokemons,
              offset: state.offset + pokemons.length,
            ));
    } catch (e) {
      print("${e}");
      emit(state.copyWith(status: PokemonStatus.failure));
    }
  }
}