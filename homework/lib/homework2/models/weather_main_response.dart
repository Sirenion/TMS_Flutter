part of 'models.dart';

@freezed
abstract class WeatherMainResponse with _$WeatherMainResponse {
  factory WeatherMainResponse({
    required Coordinates? coord,
    required List<Weather>? weather,
    required String? base,
    required WeatherMain? main,
    required int? visibility,
    required Wind? wind,
    required Rain? rain,
    required Clouds? clouds,
    required Snow? snow,
    required int? dt,
    required Sys? sys,
    required int? timezone,
    required String? name,
    required int? cod,
  }) = _WeatherMainResponse;

  factory WeatherMainResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainResponseFromJson(json);
}
