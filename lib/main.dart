import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/di/locator.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/page/home/home_page.dart';
import 'package:pokedex/presentation/page/info/info_page.dart';
import 'package:pokedex/util/theme/light/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const PokeApp());
}

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final route = GoRouter(
      routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(path: "/info", builder: (context, state) => const InfoPage())
    ]);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  locator.get<PokemonBloc>()..add(PokemonEvent())),
          BlocProvider(create: (context) => locator.get<PokemonInfoCubit>())
        ],
        child: MaterialApp.router(
          routerConfig: route,
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
        )
        );
  }
}
