import 'package:flutter/material.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/presentation/pokemon_domain.dart';
import 'package:pokedex/util/extension.dart';
import 'package:pokedex/util/theme/app_theme.dart';

class PokemonItem extends StatelessWidget {
  final PokemonDomain pokemon;
  const PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appColors = AppTheme.getColors(context);

    return Container(
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
                PokeItemTypesWidget(pokemon: pokemon, theme: theme),
              ],
            ),
          ),
          Positioned(
              top: -10,
              bottom: -10,
              right: -10,
              child: PokeballWidget(
                  size: 100, color: Colors.black.withOpacity(0.1))),
          Positioned(
            top: 0,
            bottom: 0,
            right: 5,
            child: Image.network(
              pokemon.sprites,
              width: 83,
              height: 83,
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
    );
  }
}

class PokeItemTypesWidget extends StatelessWidget {
  const PokeItemTypesWidget({
    super.key,
    required this.pokemon,
    required this.theme,
  });

  final PokemonDomain pokemon;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...pokemon.types.map((e) => Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/types/${e.toLowerCase()}.png",
                    width: 10,
                    height: 10,
                    errorBuilder: (context, error, stackTrace) {
                      return const PokeballWidget(
                          size: 10, color: Colors.white);
                    },
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    e.toTitleCase,
                    style: theme.textTheme.labelMedium
                        ?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
