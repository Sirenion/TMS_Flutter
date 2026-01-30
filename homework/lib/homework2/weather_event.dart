part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

class GetWeather extends WeatherEvent {
  final NetworkService networkService;
  final String city;

  GetWeather({required this.networkService, required this.city});
}
