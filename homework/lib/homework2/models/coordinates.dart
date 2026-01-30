part of 'models.dart';

@freezed
abstract class Coordinates with _$Coordinates {
  factory Coordinates({required double? lon, required double? lat}) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}
