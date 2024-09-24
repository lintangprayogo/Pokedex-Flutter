import 'package:freezed_annotation/freezed_annotation.dart';
part 'type_relation.freezed.dart';
part 'type_relation.g.dart';

@freezed
class TypeRelation with _$TypeRelation {
  const factory TypeRelation({required String url, required String name}) =
      _TypeRelation;

  factory TypeRelation.fromJson(Map<String, dynamic> json) =>
      _$TypeRelationFromJson(json);
}
