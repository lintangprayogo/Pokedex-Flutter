import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/get_pokemon_info.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';

part 'pokemon_info_cubit.freezed.dart';
part 'pokemon_info_state.dart';

class PokemonInfoCubit extends Cubit<PokemonInfoState> {
  final GetPokemonInfo _getPokemonInfo;
  PokemonInfoCubit(this._getPokemonInfo) : super(PokemonInfoState());

  execute(String name) async {
    try {
      final info = await _getPokemonInfo.excute(name);
      emit(state.copyWith(info: info,status: PokemonInfoStatus.success));
    } catch (e) {
      print(e);
      emit(state.copyWith(info: null, status: PokemonInfoStatus.failure));
    }
  }
}
