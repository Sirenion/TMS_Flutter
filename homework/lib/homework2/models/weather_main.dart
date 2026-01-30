part of 'models.dart';

@freezed
abstract class WeatherMain with _$WeatherMain {
  factory WeatherMain({
    required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    @JsonKey(name: 'temp_min') required double? tempMin,
    @JsonKey(name: 'temp_max') required double? tempMax,
    required int? pressure,
    required int? humidity,
    @JsonKey(name: 'sea_level') required int? seaLevel,
    @JsonKey(name: 'grnd_level') required int? grndLevel,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);
}
