import 'package:flutter/material.dart';
import '../controllers/weather_controller.dart';

class WeatherView extends StatefulWidget {
  static String id = "weather";
  const WeatherView({super.key});

  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final controller = WeatherController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getWeather(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          final weather = snapshot.data;
          return Text(
            'City: ${weather!.city}\nTemperature: ${weather.temperature}\nDescription: ${weather.description}',
          );
        }
      },
    );
  }
}
