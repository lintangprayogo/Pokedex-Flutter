// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionDetailImpl _$$EvolutionDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$EvolutionDetailImpl(
      gender: json['gender'] as String?,
      heldItem: json['heldItem'] as String?,
      item: json['item'] as String?,
      knownMove: json['knownMove'] as String?,
      knownMoveType: json['knownMoveType'] as String?,
      location: json['location'] as String?,
      minAffection: (json['minAffection'] as num?)?.toInt(),
      minBeauty: (json['minBeauty'] as num?)?.toInt(),
      minHappiness: (json['minHappiness'] as num?)?.toInt(),
      minLevel: (json['minLevel'] as num).toInt(),
      needsOverworldRain: json['needsOverworldRain'] as bool,
      partySpecies: json['partySpecies'] as String?,
      partyType: json['partyType'] as String?,
      relativePhysicalStats: json['relativePhysicalStats'] as String?,
      timeOfDay: json['timeOfDay'] as String,
      tradeSpecies: json['tradeSpecies'] as String?,
    );

Map<String, dynamic> _$$EvolutionDetailImplToJson(
        _$EvolutionDetailImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'heldItem': instance.heldItem,
      'item': instance.item,
      'knownMove': instance.knownMove,
      'knownMoveType': instance.knownMoveType,
      'location': instance.location,
      'minAffection': instance.minAffection,
      'minBeauty': instance.minBeauty,
      'minHappiness': instance.minHappiness,
      'minLevel': instance.minLevel,
      'needsOverworldRain': instance.needsOverworldRain,
      'partySpecies': instance.partySpecies,
      'partyType': instance.partyType,
      'relativePhysicalStats': instance.relativePhysicalStats,
      'timeOfDay': instance.timeOfDay,
      'tradeSpecies': instance.tradeSpecies,
    };
