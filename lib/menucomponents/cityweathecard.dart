import 'package:flutter/material.dart';
import 'package:weatherappui/size_config.dart';

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
            Text(place,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 2.23214 * SizeConfig.textMultiplier),),
            SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
            Text(temp,style: TextStyle(fontSize: 6.25 * SizeConfig.textMultiplier,color: Color(0xFF00185F),fontWeight: FontWeight.bold),),
          ],
        ),
          Container(child: Image.asset(
            imgurl,
            fit: BoxFit.contain,
            height: 12 * SizeConfig.heightMultiplier
            ),
            )
      ],
    );
  }
}