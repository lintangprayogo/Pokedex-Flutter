// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pokedex/domain/damage_domain.dart';

import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:pokedex/util/theme/app_theme.dart';

class StatTab extends StatelessWidget {
  final PokemonInfoDomain _info;

  const StatTab(this._info, {super.key});

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
                  ..._info.stats.map((e) => Padding(
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
                ..._info.stats.map((e) => Padding(
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
                              color: AppTheme.getColors(context)
                                  .baseStatsBar(e.baseStat.toDouble() / 100),
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Weakness",
                        style: Theme.of(context).textTheme.headlineSmall)
                  ],
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 4,
                                             physics: const NeverScrollableScrollPhysics(),
                      children: _info.damageRelation.damageFrom
                          .map((e) => DamageRelationCard(data: e))
                          .toList()),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Strength",
                        style: Theme.of(context).textTheme.headlineSmall)
                  ],
                ),
                Expanded(
                  child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      children: _info.damageRelation.damageTo
                          .map((e) => DamageRelationCard(data: e))
                          .toList()),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DamageRelationCard extends StatelessWidget {
  final DamageDomain data;

  const DamageRelationCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.getColors(context).pokemonItem(data.type)),
          child: Image.asset(
            "assets/images/types/${data.type.toLowerCase()}.png",
            width: 24,
            height: 24,
            errorBuilder: (context, error, stackTrace) {
              return const PokeballWidget(size: 14, color: Colors.white);
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          data.effectiveness,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
