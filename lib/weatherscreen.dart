import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherappui/size_config.dart';
import 'package:weatherappui/weathercomponents/homepagebackground.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black.withOpacity(0.5),size: 2.79 * SizeConfig.heightMultiplier,),
        title: Text('BBC Weather',style: TextStyle(fontSize:2.23214 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right:2.83 * SizeConfig.widthMultiplier),
            child: Icon(Icons.search,color: Colors.black.withOpacity(0.5),size: 2.79 * SizeConfig.heightMultiplier,),
          )
        ],
      ),
      body: Stack(
        children: [
          HomePageBackground(screenHeight: MediaQuery.of(context).size.height),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
                    CityText(),
                    SizedBox(height: 2.23214 * SizeConfig.heightMultiplier,),
                    Container(child: Image.asset(
                          'assets/27.png',
                          fit: BoxFit.contain,
                          height: 29 * SizeConfig.heightMultiplier,
                          )),
                    SizedBox(height: 2.23214 * SizeConfig.heightMultiplier,),
                    HumidTempWind(),
                    SizedBox(height: 2.23214 * SizeConfig.heightMultiplier,),
                    HighLowModText(),
                    SizedBox(height: 2.23214 * SizeConfig.heightMultiplier,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DayWeatherCard(imgurl: 'assets/26.png',temp: '29°',day: 'Tomorrow',scale: 25.0,),
                          DayWeatherCard(imgurl: 'assets/27.png',temp: '27°',day: 'Saturday',scale: 34.0),
                          DayWeatherCard(imgurl: 'assets/28.png',temp: '22°',day: 'Sunday',scale: 20.0),
                          DayWeatherCard(imgurl: 'assets/8.png',temp: '21°',day: 'Monday',scale: 35.0)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayWeatherCard extends StatelessWidget {
  String imgurl, temp, day;
  double scale;
   // ignore: use_key_in_widget_constructors
   DayWeatherCard({
    required this.imgurl,
    required this.temp,
    required this.day,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.24637 * SizeConfig.widthMultiplier),
      child: Container(
        height: 18.97321 * SizeConfig.heightMultiplier,
        width: 24.15458 * SizeConfig.widthMultiplier,
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              top: 3.348214 * SizeConfig.heightMultiplier,
              child: Container(
                width: 24.15458 * SizeConfig.widthMultiplier,
                height: 12.2767 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
            BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 20,
          offset: Offset(0, 3), // changes position of shadow
        ),
          ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(child: Image.asset(
                          imgurl,
                          fit: BoxFit.contain,
                          height: 8 * SizeConfig.heightMultiplier,
                          )),
                  SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
                  Text(temp,
                  style: TextStyle(
                    fontSize: 3.3714 * SizeConfig.heightMultiplier,
                    color: Colors.black.withOpacity(0.7)
                  ),
                  ),
                ],
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(day,style: TextStyle(fontSize: 1.5625 * SizeConfig.heightMultiplier),),
                )
          ],
        ),
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
              width: 24.1545 * SizeConfig.widthMultiplier,
              height: 4.464285 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('High',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.orange),)),
            ),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text('UV',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
          ],
        ),
        Column(
          children: [
            Container(
              width: 24.1545 * SizeConfig.widthMultiplier,
              height: 4.464285 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Low',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.blue),)),
            ),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text('Pollution',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
          ],
        ),
        Column(
          children: [
            Container(
              width: 24.1545 * SizeConfig.widthMultiplier,
              height: 4.464285 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Moderate',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.5)),)),
            ),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text('Pollen',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
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
            FaIcon(FontAwesomeIcons.cloudRain,color: Colors.black.withOpacity(0.5),size: 3.34821 * SizeConfig.heightMultiplier,),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text('36-38%',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)
          ],
        ),
        Text('27°',style: TextStyle(fontSize: 7.8125 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.7),)),
        Column(
          children: [
            FaIcon(FontAwesomeIcons.wind,color: Colors.black.withOpacity(0.5),size: 3.34821 * SizeConfig.heightMultiplier,),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text('24km/h',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)
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
        Text('London',style: TextStyle(fontSize: 5.58 * SizeConfig.heightMultiplier,color: Colors.black.withOpacity(0.7)),),
        SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
        Text('Sunny, sometimes overcast',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 2.23214 * SizeConfig.heightMultiplier),)
      ],
    );
  }
}