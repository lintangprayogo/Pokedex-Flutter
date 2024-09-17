import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pokedex/domain/pokemon_domain.dart';
import 'package:pokedex/presentation/bloc/info/pokemon_info_cubit.dart';
import 'package:pokedex/presentation/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/bloc/search/pokemon_search_cubit.dart';
import 'package:pokedex/presentation/bloc/status.dart';
import 'package:pokedex/presentation/page/base_page.dart';
import 'package:pokedex/presentation/page/component/bottom_loader.dart';
import 'package:pokedex/presentation/page/component/pokeball.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/page/home/widget/pokemon_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BasePage(
      child: Stack(
        children: [
          Positioned(
              top: -120,
              left: 8,
              right: 8,
              child: PokeballWidget(
                  size: 250, color: Colors.grey.withOpacity(0.1))),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 50, 24, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pokédex",
                  style: theme.textTheme.headlineLarge,
                ),
                Text(
                  "Search for pokémon by name or using the National Pokédex Number and from image",
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocConsumer<PokemonSearchCubit, PokemonSearchState>(
                  listener: (context, state) {
                    if (state.status == Status.success) {
                      showPokemon(context, state.pokemon!);
                    } else if (state.status == Status.failure) {
                      showError(context, state.error);
                    }
                  },
                  builder: (context, state) {
                    if (state.status == Status.loading) {
                      return const Text("Finding Your Pokemon....");
                    }
                    return Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(255, 242, 242, 242),
                                hintStyle: theme.textTheme.labelMedium
                                    ?.copyWith(color: Colors.grey.shade500),
                                labelStyle: theme.textTheme.labelMedium,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: "What pokémon are you looking for?"),
                          ),
                        ),
                        IconButton(
                            onPressed: () async {
                              try {
                                final picker = ImagePicker();
                                final image = await picker.pickImage(
                                  source: ImageSource.gallery,
                                );
                                if (image != null && context.mounted) {
                                  context
                                      .read<PokemonSearchCubit>()
                                      .searchByImage(File(image.path));
                                }
                              } catch (e) {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(e.toString()),
                                    ),
                                  );
                                }
                              }
                            },
                            icon: const Icon(Icons.image_search))
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<PokemonBloc, PokemonState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case Status.failure:
                        return const Center(
                            child: Text('failed to fetch posts'));
                      case Status.success:
                        if (state.pokemons.isEmpty) {
                          return const Center(child: Text('no posts'));
                        }
                        return Expanded(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return index >= state.pokemons.length
                                  ? const BottomLoader()
                                  : PokemonItem(pokemon: state.pokemons[index]);
                            },
                            itemCount: state.hasReachedMax
                                ? state.pokemons.length
                                : state.pokemons.length + 1,
                            controller: _scrollController,
                          ),
                        );
                      case Status.loading:
                        return Container(
                            margin: const EdgeInsets.only(top: 16),
                            child: const Center(
                                child: CircularProgressIndicator()));

                      case Status.initial:
                        return Container();
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showPokemon(BuildContext context, PokemonDomain pokemon) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('This is Your Pokemon'),
          content: SizedBox(height: 150, child: PokemonItem(pokemon: pokemon)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                 Navigator.of(context).pop();
                context.read<PokemonInfoCubit>().execute(pokemon.name);
                context.push("/info");
              },
              child: const Text('Go To Detail'),
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> showError(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Failed To Get Your Pokemon'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'),
            )
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PokemonBloc>().add(PokemonEvent());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
