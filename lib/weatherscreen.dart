import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherappui/styles.dart';
import 'package:weatherappui/weathercomponents/homepagebackground.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black.withOpacity(0.5),),
        title: Text('BBC Weather',style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(Icons.search,color: Colors.black.withOpacity(0.5),),
          )
        ],
      ),
      body: Stack(
        children: [
          HomePageBackground(screenHeight: MediaQuery.of(context).size.height),
          SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  CityText(),
                  SizedBox(height: 20,),
                  Image.asset('assets/27.png',scale: 10,),
                  SizedBox(height: 20,),
                  HumidTempWind(),
                  SizedBox(height: 20,),
                  HighLowModText(),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HighLowModText extends StatelessWidget {
  const HighLowModText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('High',style: TextStyle(color: Colors.orange),)),
            ),
            SizedBox(height: 10,),
            Text('UV',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
          ],
        ),
        Column(
          children: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Low',style: TextStyle(color: Colors.blue),)),
            ),
            SizedBox(height: 10,),
            Text('Pollution',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
          ],
        ),
        Column(
          children: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Moderate',style: TextStyle(color: Colors.black.withOpacity(0.5)),)),
            ),
            SizedBox(height: 10,),
            Text('Pollen',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
          ],
        ),
      ],
    );
  }
}

class HumidTempWind extends StatelessWidget {
  const HumidTempWind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            FaIcon(FontAwesomeIcons.cloudRain,color: Colors.black.withOpacity(0.5),size: 30,),
            SizedBox(height: 10,),
            Text('36-38%',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)
          ],
        ),
        Text('27°',style: TextStyle(fontSize: 70,color: Colors.black.withOpacity(0.7),)),
        Column(
          children: [
            FaIcon(FontAwesomeIcons.wind,color: Colors.black.withOpacity(0.5),size: 30,),
            SizedBox(height: 10,),
            Text('24km/h',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}

class CityText extends StatelessWidget {
  const CityText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('London',style: TextStyle(fontSize: 50,color: Colors.black.withOpacity(0.7)),),
        SizedBox(height: 10,),
        Text('Sunny, sometimes overcast',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20),)
      ],
    );
  }
}