// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_name_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonNameResponseImpl _$$PokemonNameResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonNameResponseImpl(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonNameResponseImplToJson(
        _$PokemonNameResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
