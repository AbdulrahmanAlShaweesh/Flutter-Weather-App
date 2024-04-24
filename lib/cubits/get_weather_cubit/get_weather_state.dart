// here are the 3 sates for the screen

import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherState {} // we need to create this state to inherit to other state and we use it

class WeatherInitalState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;  // this object from weathermodel

  WeatherLoadedState({
    required this.weatherModel,
  });
}

class WeatherFailureState extends WeatherState {}
 