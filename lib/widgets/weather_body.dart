import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/widgets/weather_body_builder.dart';

class WeatherBodyInfo extends StatelessWidget {
  const WeatherBodyInfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return WeatherBodBuilder(
      weatherModel: weatherModel,
    );
  }
}
