import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/custom_text.dart';

class WeatherBodBuilder extends StatelessWidget {
  const WeatherBodBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Alexandria',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomText(
            text: 'updated at 23:45',
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
                Image.asset('assets/images/rainy.png'),
                const CustomText(text: '17', fontSize: 18.0),
                const Column(
                  children: [
                    CustomText(text: 'MaxTemp: 234.23', fontSize: 13.0),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(text: 'MinTemp: 23.23', fontSize: 13.0),
                  ],
                )
              ],
            ),
          ),
          const CustomText(text: 'Light Rain', fontSize: 19.0)
        ],
      ),
    );
  }
}
