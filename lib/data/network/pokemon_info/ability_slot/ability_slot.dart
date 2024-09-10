import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/ability_slot/ability/ability.dart';


part 'ability_slot.freezed.dart';
part 'ability_slot.g.dart';

@freezed
class AbilitySlot with _$AbilitySlot{

     factory AbilitySlot({required int slot, required Ability ability}) = _AbilitySlot;

      
  factory AbilitySlot.fromJson(Map<String, dynamic> json) =>  _$AbilitySlotFromJson(json);
}