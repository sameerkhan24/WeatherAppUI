import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text('Good\nMorning',
              style: TextStyle(
                fontSize: 40,
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
          padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10),
          child: Text('24 March, Monday',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}