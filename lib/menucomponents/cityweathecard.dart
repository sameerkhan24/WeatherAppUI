import 'package:flutter/material.dart';

class CityWeatherCard extends StatelessWidget {
    String place;
  String temp;
  String imgurl;
  CityWeatherCard({
    Key? key,
    required this.place,
    required this.temp,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(place,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 10,),
            Text(temp,style: TextStyle(fontSize: 56,color: Color(0xFF00185F),fontWeight: FontWeight.bold),),
          ],
        ),
          Image.asset(imgurl,scale: 25,)
      ],
    );
  }
}