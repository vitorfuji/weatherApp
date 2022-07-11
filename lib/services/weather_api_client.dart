import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=55edcb203dfd6a63b5f02d9ff0b826cd&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    //print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
