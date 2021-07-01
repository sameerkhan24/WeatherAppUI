import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherappui/homecomponents/linechart.dart';
import 'package:weatherappui/menuscreen.dart';
import 'package:weatherappui/styles.dart';
import 'homecomponents/headertext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.white, Color(0xFF66AAEB)],
    ).createShader(Rect.fromPoints(Offset(500, 400), Offset(0, 490)));

    return Scaffold(
      backgroundColor: Color(0xFF5577E5),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.5
              ],
              colors: [
                Color(0xFF66AAEB),
                Color(0xFF5577E5),
              ],
              )
          ),
          child: SafeArea(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const HeaderText(),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 400,
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          '23°',
                          style: TextStyle(
                            fontSize: 160,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient
                          ),
                          ),
                      ),
                      Positioned(
                          top:180,
                          left: 120,
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 7,
          blurRadius: 200,
          offset: Offset(0, 3), // changes position of shadow
        ),
                              ],
                            )
                            ,
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 80,
                          child: Container(
                            child: Image.asset(
                              'assets/11.png',
                              
                              scale: 10.8,
                              ),
                          ),
                        ),
                        
                        Positioned(
                          top: 330,
                          left: 30,
                          child: Column(
                            children: [
                              Text(
                                'Wind',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),),
                                SizedBox(height: 10,),
                              Text(
                                '9 km/h',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),)
                            ],
                          ),
                        ),
                        Positioned(
                          top: 330,
                          right: 30,
                          child: Column(
                            children: [
                              Text('Humidity',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                              shadows: [textshadow]
                              ),),
                              SizedBox(height: 10,),
                              Text('79%',style: TextStyle(
                                color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),)
                            ],
                          ),
                        ),
                        
                    ],
      
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: LineReportChart(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 30),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu,color: Colors.white60,size: 30,),
                        Icon(Icons.thermostat,color: Colors.white60,size: 30,),
                        Text('Monday, 24 March',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                        Icon(Icons.map,color: Colors.white60,size: 30,),
                        Icon(Icons.person,color: Colors.white60,size: 30,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.home_outlined,color: Colors.black54,size: 40,),
                          Icon(Icons.search_outlined,color: Colors.black54,size: 40,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){return MenuScreen();}));
                            },
                            child: Column(
                              children: [
                                const Text('Explore',style: TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(height: 5,),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black
                                  ),
                                )
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/man.jpeg') ,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
