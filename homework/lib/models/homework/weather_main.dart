part of 'models.dart';

@freezed
abstract class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    required double? temp,
    required double? feels_like,
    required double? temp_min,
    required double? temp_max,
    required int? pressure,
    required int? humidity,
    required int? sea_level,
    required int? grnd_level,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);
}
