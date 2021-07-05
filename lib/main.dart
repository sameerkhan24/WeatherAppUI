// @dart=2.9
import 'package:flutter/material.dart';
import 'package:weatherappui/homescreen.dart';
import 'package:weatherappui/size_config.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return OrientationBuilder(
          builder: (context,orientation){
            SizeConfig().init(constraints, orientation);
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
    );
          }
          );
      },
    );
  }
}
