// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatImpl _$$PokemonStatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatImpl(
      baseStat: (json['baseStat'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PokemonStatImplToJson(_$PokemonStatImpl instance) =>
    <String, dynamic>{
      'baseStat': instance.baseStat,
      'name': instance.name,
    };
