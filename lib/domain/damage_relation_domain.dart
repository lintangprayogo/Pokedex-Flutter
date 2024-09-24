import 'package:pokedex/domain/damage_domain.dart';

class DamageRelationDomain{
  final List<DamageDomain> damageFrom;
  final List<DamageDomain> damageTo;

  DamageRelationDomain({required this.damageFrom, required this.damageTo});
}