import 'package:dio/dio.dart';

abstract interface class NetworkService {}

final class NetworkServiceImp implements NetworkService {
  final Dio _dio;

  NetworkServiceImp({required Dio dio}) : _dio = dio;
}
