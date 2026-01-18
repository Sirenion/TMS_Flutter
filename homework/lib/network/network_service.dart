import 'package:dio/dio.dart';
import 'package:homework/models/homework/models.dart';
import 'package:homework/models/practice/models.dart';

abstract interface class NetworkService {
  Future<List<User>> getUsers();

  Future<WeatherMainResponse> getWeather({required double lat, required double lon});
}

final class NetworkServiceImp implements NetworkService {
  final Dio _dio;

  NetworkServiceImp({required Dio dio}) : _dio = dio;

  @override
  Future<List<User>> getUsers() async {
    final response = await _dio.get<List<dynamic>>('https://jsonplaceholder.typicode.com/users');

    final data = response.data ?? List.empty();

    return data.map((json) => User.fromJson(json as Map<String, dynamic>)).toList();
  }

  @override
  Future<WeatherMainResponse> getWeather({
    required double lat,
    required double lon,
    String units = 'metric',
    String lang = 'ru',
  }) async {
    const apikey = '6488c5fb7d90337901ed8f7e3272b06d';

    const url = 'https://api.openweathermap.org/data/2.5/weather';

    final response = await _dio.get<dynamic>(
      url,
      queryParameters: {'lat': lat, 'lon': lon, 'appid': apikey, 'units': units, 'lang': lang},
    );

    final data = response.data ?? 'Empty';

    return WeatherMainResponse.fromJson(data);
  }
}
