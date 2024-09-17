import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/presentation/page/component/pokemon_type_widget.dart';
import 'package:pokedex/util/extension.dart';
import 'package:pokedex/util/theme/app_theme.dart';

class PokemonSearchItem extends StatelessWidget {
  final PokemonDomain pokemon;
  const PokemonSearchItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColors = AppTheme.getColors(context);

    return InkWell(
      onTap: () {
        context.read<PokemonInfoCubit>().execute(pokemon.name);
        context.push("/info");
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            color: appColors.pokemonItem(pokemon.types.first),
            borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.id,
                    style: theme.textTheme.headlineMedium
                        ?.copyWith(color: Colors.black.withOpacity(0.5)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    pokemon.name.toTitleCase,
                    style: theme.textTheme.headlineLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  PokeTypesWidget(
                    types: pokemon.types,
                    textStyle: theme.textTheme.labelMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
                top: -5,
                bottom: -10,
                right: -10,
                child: PokeballWidget(
                    size: 120, color: Colors.black.withOpacity(0.1))),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Image.network(
                pokemon.sprites,
                width: 90,
                height: 90,
                fit: BoxFit.contain,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return const Icon(
                    Icons.error,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
