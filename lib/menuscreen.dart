import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherappui/menucomponents/menutopbar.dart';
import 'package:weatherappui/menucomponents/weathercard.dart';
import 'package:weatherappui/size_config.dart';
import 'package:weatherappui/weatherscreen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuTopBar(),
                SizedBox(height: 4.46428 * SizeConfig.heightMultiplier,),
                WeatherCardScroll(),
                SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:7.23637 * SizeConfig.widthMultiplier,vertical: 3.348214 * SizeConfig.heightMultiplier),
                  child: Text('Your favorite',style: TextStyle(fontSize: 2.79 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:7.23637 * SizeConfig.widthMultiplier),
                  child: Container(
                    width: double.infinity,
                    height: 22.3214 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                    color: Color(0xFFE3F1F9),
                    borderRadius: BorderRadius.circular(25)
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.79 * SizeConfig.heightMultiplier,horizontal: 6 * SizeConfig.widthMultiplier),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Los Angeles',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 2.23214 * SizeConfig.heightMultiplier),),
              Text('12°',style: TextStyle(fontSize: 7.8125 * SizeConfig.heightMultiplier,color: Color(0xFF00185F),fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Container(child: Image.asset(
                          'assets/39.png',
                          fit: BoxFit.contain,
                          height: 11.16 * SizeConfig.heightMultiplier,
                          ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical:1.116 * SizeConfig.heightMultiplier,horizontal: 7.23637 * SizeConfig.widthMultiplier),
        child: Container(
          height: 11.16 * SizeConfig.heightMultiplier,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('My Home',style: TextStyle(fontSize:1.5625 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold)),
                          SizedBox(height: 0.558 * SizeConfig.heightMultiplier,),
                        Container(                            
                        height: 1.116 * SizeConfig.heightMultiplier,
                        width: 2.4154 * SizeConfig.widthMultiplier,
                        decoration: const BoxDecoration(                        
                        shape: BoxShape.circle,
                        color: Colors.black
                         ),
                        ),
                        ],
                      ),
                      Icon(Icons.search_outlined,color: Colors.black54,size: 4.4642 * SizeConfig.heightMultiplier,),
                      Icon(Icons.map_outlined,color: Colors.black54,size: 4.4642 * SizeConfig.heightMultiplier,),
                       Container(
                         height: 3.5714 * SizeConfig.heightMultiplier,
                         width: 7.7294 * SizeConfig.widthMultiplier,
                         child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('assets/man.jpeg') ,
                              ),
                       )
            ],),
        ),
      ),
    );
  }
}

class WeatherCardScroll extends StatelessWidget {
  const WeatherCardScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.24637 * SizeConfig.widthMultiplier),
            child: GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return WeatherScreen();}));},
              child: WeatherCard(place: 'New York',temp: '23°',imgurl: 'assets/8.png',)),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return WeatherScreen();}));},
            child: Padding(
              padding: EdgeInsets.only(left: 7.24637 * SizeConfig.widthMultiplier),
              child: WeatherCard(place: 'London',temp: '30°',imgurl: 'assets/27.png',),
            ),
          ),
        ],
      ),
    );
  }
}




