import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/network/pokemon_info/evolution/chain/evolution_chain.dart';

part 'evolution.freezed.dart';
part 'evolution.g.dart';

@freezed
class Evolution with _$Evolution {
  factory Evolution({
    required EvolutionChain chain,
  }) = _Evolution;

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      Evolution(chain: EvolutionChain.fromJson(json["chain"]));    
}
