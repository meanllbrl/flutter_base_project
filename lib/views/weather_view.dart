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
    return Scaffold();
  }
}
