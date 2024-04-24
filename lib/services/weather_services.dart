import 'package:dio/dio.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio = Dio();
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "20a4aef52ca94fceb4f63353241704";

  Future<WeatherModel> getForcastWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=7",
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      // if the e.response is not null then will access the respnse and throw the error message.
      final String errorMessage = e.response?.data['error']['message'] ??
          "oops there was an error, try again later.";
      throw Exception(errorMessage);
    } catch (error) {
      // if there is an error othere than dioExption
      throw Exception("opps there was an error please try again later...");
    }
  }
}


 