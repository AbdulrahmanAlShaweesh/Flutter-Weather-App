import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/custom_text.dart';

class NoWeatherBodyBuilder extends StatelessWidget {
  const NoWeatherBodyBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'there is no weather 😔 start',
            fontSize: 22.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          CustomText(
            text: 'searching now 🔍',
            fontSize: 22.0,
          ),
        ],
      ),
    );
  }
}
