import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/domain/search_pokemon_by_image.dart';
import 'package:pokedex/domain/search_pokemon_by_text.dart';
import 'package:pokedex/presentation/bloc/status.dart';

part 'pokemon_search_state.dart';
part 'pokemon_search_cubit.freezed.dart';

class PokemonSearchCubit extends Cubit<PokemonSearchState> {
  final SearchPokemonByImage _searchPokemonByImage;
  final SearchPokemonByText _searchPokemonByText;

  PokemonSearchCubit(this._searchPokemonByImage,this._searchPokemonByText) : super(PokemonSearchState());

  searchByText(String text) async {
    try {
      emit(PokemonSearchState());
      final info = await _searchPokemonByText.excute(text);
      emit(state.copyWith(pokemon: info, status: Status.success));
    } catch (e) {
      emit(state.copyWith(pokemon: null, status: Status.failure,error: e.toString()));
    }
  }

  searchByImage(File image) async {
    try {
      emit(PokemonSearchState(status: Status.loading));
      final info = await _searchPokemonByImage.excute(image);
      emit(state.copyWith(pokemon: info, status: Status.success));
    } catch (e) {
      emit(state.copyWith(pokemon: null, status: Status.failure,error: e.toString()));
    }
  }
}
