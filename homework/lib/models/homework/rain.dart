part of 'models.dart';

@freezed
abstract class Rain with _$Rain {
  factory Rain({required double? h}) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}
