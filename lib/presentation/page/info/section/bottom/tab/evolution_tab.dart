import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';


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
      ],
    );
  }
}