import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat.freezed.dart';
part 'pokemon_stat.g.dart';

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required int baseStat,
    required String name,
  }) = _PokemonStat;

  factory PokemonStat.fromJson(Map<String, Object?> json) => PokemonStat(
      baseStat: json["base_stat"] as int,
      name: (json["stat"] as dynamic)["name"] as String);
}
