import 'package:weather_app/models/weather_model.dart';

class WeatherStates {}

class WeatherLoadedState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class InitialWeatherState extends WeatherStates {}

class WeatherFailuerState extends WeatherStates {}
