import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../size_config.dart';

class MenuTopBar extends StatelessWidget {
  const MenuTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:7.24638 * SizeConfig.widthMultiplier),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               Text('Good\nMorning',
              style: TextStyle(
                fontSize: 4.46438 * SizeConfig.heightMultiplier,
                fontWeight: FontWeight.bold
              ),
              ),
              CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/man.jpeg') ,
                    )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:7.24638 * SizeConfig.widthMultiplier,vertical: 1.116 * SizeConfig.heightMultiplier),
          child: Text('24 March, Monday',style: TextStyle(fontSize:1.7857 * SizeConfig.heightMultiplier,color: Colors.grey,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}