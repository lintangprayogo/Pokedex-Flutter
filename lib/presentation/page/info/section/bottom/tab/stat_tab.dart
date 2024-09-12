import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/util/theme/app_theme.dart';

class StatTab extends StatelessWidget {
  final List<PokemonStatDomain> stats;

  const StatTab({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...stats.map((e) => Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Text(e.statName,
                            style: Theme.of(context).textTheme.labelSmall),
                      ))
                ],
              ),
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...stats.map((e) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(e.baseStat.toString(),
                              style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              color: AppTheme.getColors(context).baseStatsBar(e.baseStat.toDouble()/100),
                              value: e.baseStat.toDouble(),
                              backgroundColor: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ))
          ],
        ),
      ],
    );
  }
}
