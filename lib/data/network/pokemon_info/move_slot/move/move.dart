import 'package:freezed_annotation/freezed_annotation.dart';

part 'move.freezed.dart';
part 'move.g.dart';

@freezed
class Move with _$Move {
  const factory Move({
    required String url,
    required String name,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
