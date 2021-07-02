import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherappui/menucomponents/menutopbar.dart';
import 'package:weatherappui/menucomponents/weathercard.dart';

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
                SizedBox(height: 40,),
                WeatherCardScroll(),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 30),
                  child: Text('Your favorite',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                    color: Color(0xFFE3F1F9),
                    borderRadius: BorderRadius.circular(25)
                      ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Los Angeles',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
              Text('12°',style: TextStyle(fontSize: 70,color: Color(0xFF00185F),fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Image.asset('assets/39.png',scale: 10,)
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
        padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 30),
        child: Container(
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        const Text('My Home',style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5,),
                        Container(                            
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(                        
                        shape: BoxShape.circle,
                        color: Colors.black
                         ),
                        ),
                        ],
                      ),
                      Icon(Icons.search_outlined,color: Colors.black54,size: 40,),
                      Icon(Icons.map_outlined,color: Colors.black54,size: 40,),
                      const CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/man.jpeg') ,
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
            padding: const EdgeInsets.only(left: 30.0),
            child: WeatherCard(place: 'New York',temp: '23°',imgurl: 'assets/8.png',),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: WeatherCard(place: 'London',temp: '30°',imgurl: 'assets/27.png',),
          ),
        ],
      ),
    );
  }
}




