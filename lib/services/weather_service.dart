
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class WeatherService {
  Future<Map<String, dynamic>> fetchWeather() async {
    var url = 'http://api.openweathermap.org/data/2.5/weather?q=Istanbul&appid=[YOUR_API_KEY]';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
