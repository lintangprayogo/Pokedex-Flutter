// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_basic_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonBasicInfoResponseImpl _$$PokemonBasicInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonBasicInfoResponseImpl(
      id: (json['id'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilitySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => MoveSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonBasicInfoResponseImplToJson(
        _$PokemonBasicInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'types': instance.types,
      'stats': instance.stats,
      'abilities': instance.abilities,
      'moves': instance.moves,
      'weight': instance.weight,
      'height': instance.height,
    };
