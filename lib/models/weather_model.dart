enum WeatherFields{name,weather,description,temp,main}
class Weather {
  final String city;
  final String description;
  final double temperature;

  Weather({required this.city, required this.description, required this.temperature});

  // Factory method to create Weather object from API response
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json[WeatherFields.name],
      description: json[WeatherFields.weather.name][0][WeatherFields.description.name],
      temperature: json[WeatherFields.weather.name][WeatherFields.temp.name],
    );
  }
}
