import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/data/pokemon_service.dart';
import 'package:pokedex/domain/get_pokemon.dart';
import 'package:pokedex/domain/get_pokemon_info.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/page/home/home_page.dart';
import 'package:pokedex/presentation/page/info/info_page.dart';
import 'package:pokedex/util/theme/light/light_theme.dart';

void main() {
  runApp(const PokeApp());
}

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final route = GoRouter(routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
       GoRoute(
        path: "/info",
        builder: (context, state) {
         final  extra = state.extra as PokemonDomain;
          context.read<PokemonInfoCubit>().execute(extra.name);
          return InfoPage(pokemon: extra );
        },
      )
    ]);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => PokemonBloc(
                  GetPokemon(pokemonRepository: PokemonService(dio: Dio())))
                ..add(PokemonEvent())),
          BlocProvider(
            create: (context) => PokemonInfoCubit(
               GetPokemonInfo(pokemonRepository: PokemonService(dio: Dio()))
            ),
          )
        ],
        child: MaterialApp.router(
          routerConfig: route,
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          
        ));
  }
}
