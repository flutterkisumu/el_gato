import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// This class will handle all the api calls
class ApiService<T> {
  /// The Dio instance that will be used throughout the app
  static final dio = GetIt.I.get<Dio>();

  /// The base url for every API call
  static String baseURL = '';

  /// This method will fetch the data from the api
  Future<T?> getData(String path) async {
    try {
      final response = await dio.get<T>('$baseURL$path');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
