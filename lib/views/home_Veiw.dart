import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/no_weather_body.dart';
import 'package:flutter_weather_app/widgets/weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            'Weather App',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 25.0,
                ),
              ),
            )
          ],
        ),
        body: const WeatherBody(),
      ),
    );
  }
}
