import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}

MaterialColor getThemeColor(String condition) {
  final c = condition.toLowerCase();

  if (c.contains('sunny') || c.contains('clear')) {
    return Colors.amber;
  }

  if (c.contains('partly')) {
    return Colors.orange;
  }

  if (c.contains('cloudy') || c.contains('overcast')) {
    return Colors.blueGrey;
  }

  if (c.contains('mist') || c.contains('fog') || c.contains('freezing fog')) {
    return Colors.grey;
  }

  if (c.contains('light rain') ||
      c.contains('patchy light rain') ||
      c.contains('drizzle')) {
    return Colors.lightBlue;
  }

  if (c.contains('moderate rain') || c.contains('moderate rain at times')) {
    return Colors.blue;
  }

  if (c.contains('heavy rain')) {
    return Colors.indigo;
  }

  if (c.contains('light snow') || c.contains('patchy light snow')) {
    return Colors.cyan;
  }

  if (c.contains('moderate snow') || c.contains('patchy moderate snow')) {
    return Colors.lightBlue;
  }

  if (c.contains('heavy snow')) {
    return Colors.blueGrey;
  }

  if (c.contains('sleet') || c.contains('ice pellets')) {
    return Colors.teal;
  }

  if (c.contains('thunder')) {
    return Colors.deepPurple;
  }

  return Colors.blueGrey;
}
