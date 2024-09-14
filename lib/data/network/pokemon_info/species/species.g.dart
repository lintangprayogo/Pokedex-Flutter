// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesImpl(
      habitat: json['habitat'] == null
          ? null
          : Habitat.fromJson(json['habitat'] as Map<String, dynamic>),
      growthRate:
          GrowthRate.fromJson(json['growthRate'] as Map<String, dynamic>),
      eggGroups: (json['eggGroups'] as List<dynamic>?)
              ?.map((e) => EggGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      evolutionUrl: json['evolutionUrl'] as String? ?? "",
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) =>
    <String, dynamic>{
      'habitat': instance.habitat,
      'growthRate': instance.growthRate,
      'eggGroups': instance.eggGroups,
      'evolutionUrl': instance.evolutionUrl,
    };
