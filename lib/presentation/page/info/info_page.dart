// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/page/base_page.dart';
import 'package:pokedex/presentation/page/component/bottom_loader.dart';
import 'package:pokedex/presentation/page/info/section/bottom/bottom_section.dart';
import 'package:pokedex/presentation/page/info/section/top/top_section.dart';
import 'package:pokedex/util/theme/app_theme.dart';

class InfoPage extends StatelessWidget {


  const InfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BasePage(child: BlocBuilder<PokemonInfoCubit, PokemonInfoState>(
      builder: (context, state) {
        if (state.status == PokemonInfoStatus.initial) {
          return const Center(
            child: BottomLoader(),
          );
        }
        if (state.status == PokemonInfoStatus.failure) {
          return const Center(
            child: Text("Failed To Get Detail"),
          );
        }
      if (state.info == null) {
          return const Center(
            child: Text("Pokemon Not Found"),
          );
        }
        final info = state.info!;
        return Stack(
          fit: StackFit.loose,
          children: [
            Positioned.fill(
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
                decoration: BoxDecoration(
                  color: AppTheme.getColors(context)
                      .pokemonItem(state.info!.types.first),
                ),
                child: TopSection(pokemon: state.info!),
              ),
            ),
            Positioned.fill(
              child: DraggableScrollableSheet(
                initialChildSize: 0.6,
                minChildSize: 0.58,
                maxChildSize: 1,
                builder: (context, scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: ListView(
                      controller: scrollController,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        SizedBox(
                          child: Stack(
                            children: [
                              DetailBody(info: info),
                              Transform.translate(
                                offset: const Offset(0, -128),
                                child: Center(
                                  child: Image.network(
                                    state.info!.sprites,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    ));
  }
}
