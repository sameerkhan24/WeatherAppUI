import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:clip_shadow/clip_shadow.dart';

class HomePageBackground extends StatelessWidget {

  final screenHeight;

  const HomePageBackground({Key? key, @required this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData  = Theme.of(context);

    return ClipShadow(
      clipper: BottomShapeClipper(),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 100,
          blurRadius: 200,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      child: Container(
        height: screenHeight * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(size.width/2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}