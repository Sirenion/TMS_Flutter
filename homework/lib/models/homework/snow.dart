part of 'models.dart';

@freezed
abstract class Snow with _$Snow {
  factory Snow({@JsonKey(name: '1h') required double? h}) = _Snow;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);
}
