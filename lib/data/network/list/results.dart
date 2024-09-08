import 'package:freezed_annotation/freezed_annotation.dart';
part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class Result with _$Result {
  factory Result({required String name, required String url}) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
