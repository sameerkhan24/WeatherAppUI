import 'package:flutter/material.dart';
import 'package:weatherappui/menucomponents/cityweathecard.dart';

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
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xFFE3F1F9),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CityWeatherCard(place: place,temp: temp,imgurl: imgurl,),
          SizedBox(height: 20,),
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('12:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('Hours',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('30:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('Min',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('56',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('Sec',style: TextStyle(color: Colors.grey),)
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