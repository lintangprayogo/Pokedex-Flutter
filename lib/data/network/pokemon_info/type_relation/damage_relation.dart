import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/type_relation/type_relation.dart';

part 'damage_relation.freezed.dart';

@freezed
class DamageRelation with _$DamageRelation {
  const factory DamageRelation({
    required List<TypeRelation> noDamageTo,
    required List<TypeRelation> halfDamageTo,
    required List<TypeRelation> doubleDamageTo,
    required List<TypeRelation> noDamageFrom,
    required List<TypeRelation> halfDamageFrom,
    required List<TypeRelation> doubleDamageFrom,
  }) = _DamageRelation;

  factory DamageRelation.fromJson(Map<String, dynamic> json) {
    return DamageRelation(
      noDamageTo: (json["no_damage_to"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
      halfDamageTo: (json["half_damage_to"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
      doubleDamageTo: (json["double_damage_to"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
      noDamageFrom: (json["no_damage_from"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
      halfDamageFrom: (json["half_damage_from"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
      doubleDamageFrom: (json["double_damage_from"] as List<dynamic>)
          .map((e) => TypeRelation.fromJson(e))
          .toList(),
    );
  }
}
