import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/util/extension.dart';

class PokeTypesWidget extends StatelessWidget {
  final PokemonDomain pokemon;

  final TextStyle? textStyle;

  const PokeTypesWidget({
    super.key,
    required this.pokemon,
    this.textStyle,
  });

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
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
