// create the cubit

// ignore_for_file: unused_local_variable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/services/weather_services.dart';

// there is the cubit. //
class GetWeatherCubit extends Cubit<WeatherState> {
  // when the app open we send the NoWeatherState as inital state of the app
  GetWeatherCubit() : super(WeatherInitalState());

  WeatherModel? weatherModel; // we have access to this attrbute freom the cubit
  getCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherServices().getForcastWeather(
        cityName: cityName,
      );

      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } on Exception catch (e) {
      // if there is an error //
      emit(WeatherFailureState());
    }
    // emit the state. "connection between the logic and UI to update the UI" //
  }
}
