import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_info_domain.dart';
import 'package:pokedex/presentation/page/info/section/bottom/tab/about_tab.dart';
import 'package:pokedex/presentation/page/info/section/bottom/tab/evolution_tab.dart';
import 'package:pokedex/presentation/page/info/section/bottom/tab/move_tab.dart';
import 'package:pokedex/presentation/page/info/section/bottom/tab/stat_tab.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({
    super.key,
    required this.info,
  });

  final PokemonInfoDomain info;

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: TabBar(
                controller: _tabController,
                tabs: ["About", "Base Stat", "Evolution", "Moves"]
                    .map((e) => Tab(text: e))
                    .toList(),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 16, 16, 0),
          child: AnimatedBuilder(
              animation: _tabController,
              builder: (context, _) {
                switch (_tabController.index) {
                  case 0:
                    return AboutTab(data: widget.info);
                  case 1:
                    return StatTab(stats: widget.info.stats);
                  case 2:
                    return EvolutionPage(info: widget.info);
                  case 3:
                    return MovesTab(data: widget.info);
                  default:
                    return Container();
                }
              }),
        )
      ],
    );
  }
}
