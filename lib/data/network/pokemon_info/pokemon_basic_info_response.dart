import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/ability_slot/ability_slot.dart';
import 'package:pokedex/data/network/pokemon_info/base_stat/pokemon_stat.dart';
import 'package:pokedex/data/network/pokemon_info/move_slot/move_slot.dart';
import 'package:pokedex/data/network/pokemon_info/type_slot/pokemon_type_slot.dart';

part 'pokemon_basic_info_response.freezed.dart';
part 'pokemon_basic_info_response.g.dart';

@freezed
class PokemonBasicInfoResponse with _$PokemonBasicInfoResponse {
  const factory PokemonBasicInfoResponse(
      {required int id,
      required List<PokemonTypeSlot> types,
      required List<PokemonStat> stats,
      required List<AbilitySlot> abilities,
      required List<MoveSlot> moves,
      required int weight,
      required int height}) = _PokemonBasicInfoResponse;

  factory PokemonBasicInfoResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonBasicInfoResponseFromJson(json);
}
