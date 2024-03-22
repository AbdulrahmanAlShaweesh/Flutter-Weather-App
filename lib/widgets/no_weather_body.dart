import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/custom_text.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: 'there is no weather 😔 start',
          ),
          SizedBox(
            height: 5.0,
          ),
          CustomText(text: 'searching now 🔍')
        ],
      ),
    );
  }
}
