import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/presentation/page/component/pokemon_type_widget.dart';
import 'package:pokedex/util/extension.dart';

class TopSection extends StatelessWidget {
  final PokemonInfoDomain pokemon;

  const TopSection({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.favorite_border),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name.toTitleCase,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  PokeTypesWidget(
                    types: pokemon.types,
                    size: 16,
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white),
                  )
                ],
              ),
              Text(
                pokemon.id,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                PokeballWidget(size: 160, color: Colors.black.withOpacity(0.2)),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.network(
                    pokemon.sprites,
                    width: 110,
                    height: 110,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
