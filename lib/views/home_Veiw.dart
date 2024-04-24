import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:flutter_weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:flutter_weather_app/views/search_vew.dart';
import 'package:flutter_weather_app/widgets/custom_text.dart';
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SearchView();
                  }));
                },
                icon: const Icon(
                  Icons.search,
                  size: 25.0,
                ),
              ),
            )
          ],
        ),
        // we use bloc builder at the place where we need to update the UI
        // bloc builder listen to getweathercubit and weatherstate... //
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          // here the bloc builder listen to a state which the cubit send to the UI
          builder: (context, state) {
            if (state is WeatherInitalState) {
              return const NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherBodyInfo(
                weatherModel: state.weatherModel,
              );
            } else {
              return const Center(
                child: CustomText(
                  text: 'opps, there was an error please try again later',
                  fontSize: 18.0,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
