// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbilitySlotImpl _$$AbilitySlotImplFromJson(Map<String, dynamic> json) =>
    _$AbilitySlotImpl(
      slot: (json['slot'] as num).toInt(),
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbilitySlotImplToJson(_$AbilitySlotImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'ability': instance.ability,
    };
