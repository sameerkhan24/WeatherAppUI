import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherappui/menucomponents/menutopbar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              MenuTopBar(),
            ],
          ),
        ),
      ),
    );
  }
}
