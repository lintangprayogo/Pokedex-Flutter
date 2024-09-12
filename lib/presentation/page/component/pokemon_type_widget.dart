import 'package:flutter/material.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/util/extension.dart';

class PokeTypesWidget extends StatelessWidget {
  final List<String> types;

  final TextStyle? textStyle;
  final double size;

  const PokeTypesWidget(
      {super.key, required this.types, this.textStyle, this.size = 10});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...types.map((e) => Container(
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
                    width: size,
                    height: size,
                    errorBuilder: (context, error, stackTrace) {
                      return PokeballWidget(size: size, color: Colors.white);
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
