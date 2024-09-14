import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/data/pokemon_repository.dart';
import 'package:pokedex/data/pokemon_service.dart';
import 'package:pokedex/domain/get_pokemon.dart';
import 'package:pokedex/domain/get_pokemon_info.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/bloc/pokemon/pokemon_bloc.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator
      .registerFactory<PokemonRepository>(() => PokemonService(dio: locator()));
  locator.registerFactory<GetPokemon>(
      () => GetPokemon(pokemonRepository: locator()));
  locator.registerFactory<GetPokemonInfo>(
      () => GetPokemonInfo(pokemonRepository: locator()));
  locator.registerFactory<PokemonInfoCubit>(() => PokemonInfoCubit(locator()));

  locator.registerFactory<PokemonBloc>(() => PokemonBloc(locator()));
}
