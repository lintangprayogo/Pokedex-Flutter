import 'package:flutter/material.dart';

import '../app_theme.dart';

class AppColorsLight extends AppColors {
  const AppColorsLight();

  @override
  Color get pokemonTabTitle => const Color(0xFF303943).withOpacity(0.4);

  @override
  Color get selectPokemonTabTitle => const Color(0xFF303943);

  @override
  Color get pokeballLogoBlack => const Color(0xFF303943);

  @override
  Color get pokeballLogoGray => const Color(0xFF303943).withOpacity(0.1);

  @override
  Color get panelBackground => const Color(0xFFE9E9E9);

  @override
  Color get pokemonDetailsTitleColor =>const Color(0xFFFFFFFF);

  @override
  Color get appBarButtons =>const Color(0xFF000000);
}
