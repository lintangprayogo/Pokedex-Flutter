// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionImpl _$$EvolutionImplFromJson(Map<String, dynamic> json) =>
    _$EvolutionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$$EvolutionImplToJson(_$EvolutionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
    };
