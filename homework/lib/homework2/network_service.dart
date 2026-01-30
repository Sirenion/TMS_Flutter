import 'package:dio/dio.dart';
import 'package:homework/homework2/models/models.dart';

abstract interface class NetworkService {

  Future<WeatherMainResponse> getWeather({required String name});
}

final class NetworkServiceImp implements NetworkService {
  final Dio _dio;

  NetworkServiceImp({required Dio dio}) : _dio = dio;

  @override
  Future<WeatherMainResponse> getWeather({
    required String name,
    String units = 'metric',
    String lang = 'ru',
  }) async {
    const apikey = '6488c5fb7d90337901ed8f7e3272b06d';

    const url = 'https://api.openweathermap.org/data/2.5/weather';

    final response = await _dio.get<dynamic>(
      url,
      queryParameters: {'q': name, 'appid': apikey, 'units': units, 'lang': lang},
    );

    final data = response.data ?? 'Empty';

    return WeatherMainResponse.fromJson(data);
  }
}
