import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/util/extension.dart';

class EvolutionPage extends StatelessWidget {
  const EvolutionPage({
    super.key,
    required this.info,
  });

  final PokemonInfoDomain info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
              child: Row(
                children: [
                  Text(
                    "Evolution",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ...info.evolutionPair.map((pokemonPair) => Row(children: [
                      ...pokemonPair
                          .map<Widget>((data) => Expanded(
                                child: Column(
                                  children: [
                                    Image.network(
                                      width: 100,
                                      height: 100,
                                      data.sprites,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const PokeballWidget(
                                                  size: 100,
                                                  color: Colors.white),
                                    ),
                                    Text(
                                      data.name.toTitleCase,
                                    )
                                  ],
                                ),
                              ))
                          .toList()
                        ..insert(
                            1,
                            const Column(
                              children: [
                                Icon(Icons.chevron_right_outlined),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Evolved")
                              ],
                            )),
                    ]))
              ],
            )
          ],
        ),
      ],
    );
  }
}
