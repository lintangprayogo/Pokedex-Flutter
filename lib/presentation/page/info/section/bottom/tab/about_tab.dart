import 'package:flutter/material.dart';

import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/util/extension.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    super.key,
    required this.data,
  });

  final PokemonInfoDomain data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Text("Description",
                      style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child:
                      Text("", style: Theme.of(context).textTheme.bodySmall)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Habitat",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Height",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Weight",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Abilities",
                        style: Theme.of(context).textTheme.labelSmall),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.habitatName.toCapitalized,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${data.height} Cm",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${data.height} Kg",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.abilities.map((e) => e.toCapitalized).join(", "),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8),
          child: Row(
            children: [
              Text(
                "Breeding",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Row(
          children: [
        Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Growth rate",style: Theme.of(context).textTheme.labelSmall,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Egg Groups",style: Theme.of(context).textTheme.labelSmall),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${data.growthRate}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.eggGroups.map((e) => e.toCapitalized).join(", "),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
