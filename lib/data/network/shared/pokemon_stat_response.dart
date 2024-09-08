import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/list/pokemon_type_slot.dart';
part 'pokemon_stat_response.freezed.dart';
part 'pokemon_stat_response.g.dart';

@freezed
class PokemonStatResponse with _$PokemonStatResponse {

  const factory PokemonStatResponse({
    required int id,
    required List<PokemonTypeSlot> types,
  }) = _PokemonStatResponse;

  factory PokemonStatResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonStatResponseFromJson(json);
}
