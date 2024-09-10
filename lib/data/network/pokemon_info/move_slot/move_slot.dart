
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/move_slot/move/move.dart';

part 'move_slot.g.dart';
part 'move_slot.freezed.dart';

@freezed
class MoveSlot with _$MoveSlot {
  const factory MoveSlot({required Move move}) = _MoveSlot;
    factory MoveSlot.fromJson(Map<String, dynamic> json) =>  _$MoveSlotFromJson(json);

}