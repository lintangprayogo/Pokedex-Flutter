// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionChainImpl _$$EvolutionChainImplFromJson(Map<String, dynamic> json) =>
    _$EvolutionChainImpl(
      species: SpeciesName.fromJson(json['species'] as Map<String, dynamic>),
      evolveTo: (json['evolveTo'] as List<dynamic>)
          .map((e) => EvolutionChain.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EvolutionChainImplToJson(
        _$EvolutionChainImpl instance) =>
    <String, dynamic>{
      'species': instance.species,
      'evolveTo': instance.evolveTo,
    };
