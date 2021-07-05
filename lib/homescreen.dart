import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherappui/homecomponents/linechart.dart';
import 'package:weatherappui/menuscreen.dart';
import 'package:weatherappui/styles.dart';
import 'homecomponents/headertext.dart';
import 'size_config.dart';

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
            bottom: false,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                 HeaderText(),
                SizedBox(height: 1.11 * SizeConfig.heightMultiplier,),
                Container(
                  width: double.infinity,
                  height: 44.6428 * SizeConfig.heightMultiplier,
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: FittedBox(
                          child: Text(
                            '23°',
                            style: TextStyle(
                              fontSize: 17.857 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = linearGradient
                            ),
                            ),
                        ),
                      ),
                      Positioned(
                          top:20.089 * SizeConfig.heightMultiplier,
                          left: 28.9855 * SizeConfig.widthMultiplier,
                          child: Container(
                            height: 16.741 * SizeConfig.heightMultiplier,
                            width: 36.2318 * SizeConfig.widthMultiplier,
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
                        Padding(
                          padding: EdgeInsets.only(top:12.276 * SizeConfig.heightMultiplier),
                          child: Center(
                            child: Container(
                              child: Image.asset(
                                'assets/11.png',
                                fit: BoxFit.contain,
                                height: 31.25 * SizeConfig.heightMultiplier,
                                ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.only(top: 36.83 * SizeConfig.heightMultiplier,left: 7.2463 * SizeConfig.widthMultiplier),
                          child: Column(
                            children: [
                              Text(
                                'Wind',style: TextStyle(fontSize: 1.7857 * SizeConfig.heightMultiplier,color: Colors.white,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),),
                                SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
                              Text(
                                '9 km/h',style: TextStyle(color: Colors.white,fontSize: 2.23214 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),)
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 36.83 * SizeConfig.heightMultiplier,right: 7.2463 * SizeConfig.widthMultiplier),
                            child: Column(
                              children: [
                                Text('Humidity',style: TextStyle(fontSize: 1.7857 * SizeConfig.heightMultiplier,color: Colors.white,fontWeight: FontWeight.bold,
                                shadows: [textshadow]
                                ),),
                                SizedBox(height: 1.116 * SizeConfig.heightMultiplier,),
                                Text('79%',style: TextStyle(
                                  color: Colors.white,fontSize: 2.23214 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold,
                                  shadows: [textshadow]
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        
                    ],
        
                  ),
                ),
                SizedBox(height:2.23214 * SizeConfig.heightMultiplier,),
                Container(
                  child: LineReportChart(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.24637 * SizeConfig.widthMultiplier,vertical: 3.34821 * SizeConfig.heightMultiplier),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu,color: Colors.white60,size: 3.34821 * SizeConfig.heightMultiplier,),
                        Icon(Icons.thermostat,color: Colors.white60,size: 3.34821 * SizeConfig.heightMultiplier,),
                        FittedBox(child: Text('Monday, 24 March',style: TextStyle(color: Colors.white,fontSize: 1.8973 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold),)),
                        Icon(Icons.map,color: Colors.white60,size: 3.34821 * SizeConfig.heightMultiplier,),
                        Icon(Icons.person,color: Colors.white60,size: 3.34821 * SizeConfig.heightMultiplier,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
              horizontal:2 * SizeConfig.widthMultiplier,
              vertical: 1 * SizeConfig.heightMultiplier),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:4.8309 * SizeConfig.widthMultiplier,vertical: 2.7901 * SizeConfig.heightMultiplier),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.home_outlined,color: Colors.black54,size: 4.4642 * SizeConfig.heightMultiplier,),
                          Icon(Icons.search_outlined,color: Colors.black54,size: 4.4642 * SizeConfig.heightMultiplier,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){return MenuScreen();}));
                            },
                            child: Column(
                              children: [
                                Text('Explore',style: TextStyle(fontSize: 1.6 * SizeConfig.heightMultiplier,fontWeight: FontWeight.bold)),
                                SizedBox(height: 0.55803 * SizeConfig.heightMultiplier,),
                                Container(
                                  height: 1.11607* SizeConfig.heightMultiplier,
                                  width: 2.4154 * SizeConfig.widthMultiplier,
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
