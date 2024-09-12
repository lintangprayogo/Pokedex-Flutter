import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg_group.freezed.dart';
part 'egg_group.g.dart';

@freezed
class EggGroup with _$EggGroup {
  const factory EggGroup({required String name, required String url}) =
      _EggGroup;

  factory EggGroup.fromJson(Map<String, dynamic> json) =>
      _$EggGroupFromJson(json);
}
