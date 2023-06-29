// controllers/weather_controller.dart

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherController {
  final WeatherService weatherService = WeatherService();

  Future<Weather> getWeather() async {
    final weatherJson = await weatherService.fetchWeather();
    return Weather.fromJson(weatherJson);
  }
}
