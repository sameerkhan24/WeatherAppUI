import 'package:flutter/material.dart';
import 'package:weatherappui/weathercomponents/homepagebackground.dart';
import 'package:weatherappui/weathercomponents/weathershadow.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePageBackground(screenHeight: MediaQuery.of(context).size.height),
        ],
      ),
    );
  }
}