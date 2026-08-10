import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final baseUrl = 'https://api.weatherapi.com/v1';
  final apiKey = 'e72ece0e06454a0ebf901546251711&q';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'oops there wase an error , try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('oops there wase an error , try later');
    }
  }
}
