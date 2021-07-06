import 'package:flutter/material.dart';
import 'package:weatherappui/menucomponents/cityweathecard.dart';

import '../size_config.dart';

class WeatherCard extends StatelessWidget {

  String place;
  String temp;
  String imgurl;

   WeatherCard({
    Key? key,
    required this.place,
    required this.temp,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.9 * SizeConfig.heightMultiplier,
      width: 72.4637 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: Color(0xFFE3F1F9),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:6 * SizeConfig.widthMultiplier,vertical:1.79 * SizeConfig.heightMultiplier,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CityWeatherCard(place: place,temp: temp,imgurl: imgurl,),
          SizedBox(height: 2.23214 * SizeConfig.heightMultiplier,),
          Container(
            height: 7.8125 * SizeConfig.heightMultiplier,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical:0.89285 * SizeConfig.heightMultiplier,horizontal: 1.93236 * SizeConfig.widthMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('12:',style: TextStyle(fontSize: 2.79 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold),),
                      Text('Hours',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('30:',style: TextStyle(fontSize: 2.79 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold),),
                      Text('Min',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('56',style: TextStyle(fontSize: 2.79 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold),),
                      Text('Sec',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}