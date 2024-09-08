import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/data/pokemon_service.dart';
import 'package:pokedex/presentation/bloc/pokemon_bloc.dart';
import 'package:pokedex/presentation/page/home/home_page.dart';
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
      )
    ]);
    return BlocProvider(
      create: (context) =>
          PokemoBloc(PokemonService(dio: Dio()))..add(PokemonFetched()),
      child: MaterialApp.router(
        routerConfig: route,
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
