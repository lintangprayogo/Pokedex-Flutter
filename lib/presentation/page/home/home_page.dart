import 'package:flutter/material.dart';
import 'package:pokedex/presentation/bloc/pokemon_bloc.dart';
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
            child:
                PokeballWidget(size: 250, color: Colors.grey.withOpacity(0.1))),
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
                "Search for pokémon by name or using the National Pokédex Number",
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 242, 242, 242),
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
               const SizedBox(
                height: 16,
              ),
              BlocBuilder<PokemoBloc, PokemonState>(
                builder: (context, state) {
                  switch (state.status) {
                    case PokemonStatus.failure:
                      return const Center(child: Text('failed to fetch posts'));
                    case PokemonStatus.success:
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
                    case PokemonStatus.initial:
                      return Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: const Center(child: CircularProgressIndicator()));
                  }
                },
              )
            ],
          ),
        ),
      ],
    ));
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PokemoBloc>().add(PokemonFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
