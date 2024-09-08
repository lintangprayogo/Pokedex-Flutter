import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/data/network/list/results.dart';

part 'pokemon_name_response.freezed.dart';
part 'pokemon_name_response.g.dart';

@freezed
class PokemonNameResponse with _$PokemonNameResponse {

  const factory PokemonNameResponse({
    required int count,
    required List<Result> results
  }) = _PokemonNameResponse;

  factory PokemonNameResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonNameResponseFromJson(json);
}
