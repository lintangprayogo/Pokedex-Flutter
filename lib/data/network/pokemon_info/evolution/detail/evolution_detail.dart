
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_detail.freezed.dart';
part 'evolution_detail.g.dart';
@freezed
class EvolutionDetail with _$EvolutionDetail {
  factory EvolutionDetail({
    final String? gender,
    final String? heldItem,
    final String? item,
    final String? knownMove,
    final String? knownMoveType,
    final String? location,
    final int? minAffection,
    final int? minBeauty,
    final int? minHappiness,
    required int minLevel,
    required bool needsOverworldRain,
    final String? partySpecies,
    final String? partyType,
    final String? relativePhysicalStats,
    required String timeOfDay,
    final String? tradeSpecies,
  }) = _EvolutionDetail;

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailFromJson(json);
}