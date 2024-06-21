import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

import '../utils/color.dart';

class NewShape extends StatefulWidget {
  const NewShape({Key? key}) : super(key: key);

  @override
  State<NewShape> createState() => _NewShapeState();
}

class _NewShapeState extends State<NewShape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: _Hexagon(),
          child: Container(
            height: 100,
            width: 100,
            color: ColorResource.lightBlack,
          ),
        ),
      ),
    );
  }
}

class _Hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * .4, 0);
    path.lineTo(size.width *.75, 0);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.75, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width * .4, 0);
    // path.lineTo(0, size.height*.0433);
    // path.lineTo(size.width * .25, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// class _Hexagon extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width * .25, 0);
//     path.lineTo(size.width *.75, 0);
//     path.lineTo(size.width, size.height * 0.5);
//     path.lineTo(size.width * 0.75, size.height * 0.9);
//     path.lineTo(size.width * 0.25, size.height * 0.9);
//     path.lineTo(0, size.height*.0433);
//     // path.lineTo(size.width * .25, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }