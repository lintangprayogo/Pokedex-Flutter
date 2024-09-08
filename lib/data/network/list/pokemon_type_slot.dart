import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/shared/pokemon_type.dart';

part 'pokemon_type_slot.freezed.dart';
part 'pokemon_type_slot.g.dart';
@freezed
class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({required int slot ,required PokemonType type}) =
      _PokemonTypeSlot;

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}
