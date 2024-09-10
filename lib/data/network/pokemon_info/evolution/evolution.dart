import 'package:freezed_annotation/freezed_annotation.dart';
part 'evolution.freezed.dart';
part 'evolution.g.dart';

@freezed
class Evolution with _$Evolution {
  const factory Evolution({
    required int id,
    required String name,
    required int level,
  }) = _Evolution;

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);
}