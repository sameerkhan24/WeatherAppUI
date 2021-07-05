import 'package:flutter/material.dart';
import 'package:weatherappui/size_config.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
         Padding(
          padding: EdgeInsets.symmetric(
            horizontal:2 * SizeConfig.widthMultiplier,
            vertical: 1 * SizeConfig.heightMultiplier),
          child: FittedBox(
            child: Text(
              'Los Angeles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 4.464 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
        ),
          Padding(
      padding: EdgeInsets.symmetric(
            horizontal:2 * SizeConfig.widthMultiplier,
            vertical: 1 * SizeConfig.heightMultiplier),
      child: FittedBox(
        child: Text(
          'Chance of Rain: 3%',
          style: TextStyle(
            color: Colors.white,
            fontSize: 2.232 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    ),
      ],
    );
  }
}