import 'package:cloudly/src/utilities/converters.dart';

class Weather {
  int? id;
  int? time;
  int? sunrise;
  int? sunset;
  int? humidity;
  String? description;
  String? iconCode;
  String? main;
  String? cityName;
  double? windSpeed;
  Temperature? temperature;
  Temperature? minTemperature;
  Temperature? maxTemperature;
  List<Weather>? forecast;

  Weather(
      {this.id,
      this.time,
      this.sunrise,
      this.sunset,
      this.humidity,
      this.description,
      this.iconCode,
      this.main,
      this.cityName,
      this.windSpeed,
      this.temperature,
      this.minTemperature,
      this.maxTemperature,
      this.forecast});

  static Weather fromJson(Map<String, dynamic> response) {
    final weather = response['weather'][0];
    return Weather(
      id: weather['id'],
      time: response['dt'],
      description: weather['description'],
      iconCode: weather['icon'],
      main: weather['main'],
      cityName: response['name'],
      temperature: Temperature(getDouble(response['main']['temp'])),
      minTemperature: Temperature(getDouble(response['main']['temp_min'])),
      maxTemperature: Temperature(getDouble(response['main']['temp_max'])),
      sunrise: response['sys']['sunrise'],
      sunset: response['sys']['sunset'],
      humidity: response['main']['humidity'],
      windSpeed: getDouble(response['wind']['speed'])
    );
  }
}
