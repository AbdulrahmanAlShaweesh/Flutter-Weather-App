import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/widgets/custom_text.dart';

class WeatherBodBuilder extends StatelessWidget {
  const WeatherBodBuilder({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomText(
            text:
                'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            fontSize: 23.0,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image!}"),
                CustomText(text: '${weatherModel.temp}', fontSize: 18.0),
                Column(
                  children: [
                    CustomText(
                        text: 'MaxTemp: ${weatherModel.maxTemp.round()}',
                        fontSize: 13.0),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                        text: 'MinTemp:${weatherModel.minTemp.round()}',
                        fontSize: 13.0),
                  ],
                )
              ],
            ),
          ),
          CustomText(text: weatherModel.watherCondition, fontSize: 19.0)
        ],
      ),
    );
  }
}
