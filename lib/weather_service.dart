import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/weather.dart';
import 'config.dart';

class WeatherService {
  static Future<Weather> fetchWeather(double lat, double lon) async {
    if (openWeatherApiKey == 'REPLACE_WITH_YOUR_API_KEY') {
      throw Exception(
          'Please set your OpenWeatherMap API key in lib/config.dart');
    }

    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': lat.toString(),
      'lon': lon.toString(),
      'units': 'metric',
      'appid': openWeatherApiKey,
    });

    final res = await http.get(uri).timeout(const Duration(seconds: 10));
    if (res.statusCode != 200) {
      throw Exception('Failed to fetch weather: ${res.statusCode}');
    }

    final Map<String, dynamic> json =
        jsonDecode(res.body) as Map<String, dynamic>;
    return Weather.fromJson(json);
  }
}
