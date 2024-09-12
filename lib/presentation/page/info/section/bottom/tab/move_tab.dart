import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/util/extension.dart';

class MovesTab extends StatelessWidget {
  const MovesTab({
    super.key,
    required this.data,
  });

  final PokemonInfoDomain data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: buildBodies(context),
    );
  }

  List<List<String>> get movements {
    // group moves to 4 group
    final int itemCount = data.moves.length;

    final movements = List.generate(4, (index) => <String>[]);
    for (int i = 0; i < itemCount; i++) {
      // Tentukan list mana yang akan menyimpan item
      final int listIndex = i % 4;

      // Tambahkan item ke list
      movements[listIndex].add(data.moves[i]);
    }

    return movements;
  }

  List<Widget> buildBodies(BuildContext context) {
    final bodies = <Widget>[];
    movements.asMap().forEach((index, e) {
      bodies.add(
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Movements ${index + 1}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: e
                    .map((move) => Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            move.toCapitalized,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      );
    });
    return bodies;
  }
}
