// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatResponseImpl _$$PokemonStatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatResponseImpl(
      id: (json['id'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonStatResponseImplToJson(
        _$PokemonStatResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'types': instance.types,
    };
