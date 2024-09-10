import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/util/extension.dart';

class TopSection extends StatelessWidget {
  final PokemonDomain pokemon;

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
                  Row(
                    children: pokemon.types
                        .map((type) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  type,
                                  style:  Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
              Text(
                pokemon.id,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PokeballWidget(size: 150, color: Colors.white)
          ],
        )
      ],
    );
  }
}
