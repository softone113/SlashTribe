import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:slash_tribe/utils/color.dart';

class HexagonTextField extends StatefulWidget {
  const HexagonTextField({Key? key}) : super(key: key);

  @override
  State<HexagonTextField> createState() => _HexagonTextFieldState();
}

class _HexagonTextFieldState extends State<HexagonTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      ClipPath(
                        clipper: _Hexagon(),
                        child: Container(
                          width: MediaQuery.of(context).size.width * .85,
                          height: 60,
                          padding: EdgeInsets.all(5),
                          color: ColorResource.lightBlack,
                          child: ClipPath(
                            clipper: _Hexagons(),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .9,
                              height: 100,
                              color: ColorResource.whiteColor,
                              child: Row(
                                children: [
                                  Expanded(child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter text...',
                                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                    ),
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0,right: 13),
                                    child: HexagonWidget.flat(
                                      width: 60,
                                      color: ColorResource.lightBlack,
                                      child: HexagonWidget.flat(
                                        width: 50,
                                        color: ColorResource.whiteColor,
                                        child: Center(
                                          child: Icon(Icons.mic, size: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Transform.rotate(
                          angle: 0.55,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                                color: ColorResource.whiteColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.elliptical(50, 0),
                                    bottomRight: Radius.elliptical(50, 0),
                                    topRight: Radius.elliptical(50, 0),
                                    topLeft: Radius.elliptical(60, 10))),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 60,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: ColorResource.orangeColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.elliptical(20, 10),
                                      topLeft: Radius.elliptical(20, 10))),
                            ),
                          ),
                        ),)
                    ],
                  ),
                  HexagonWidget.flat(
                    width: MediaQuery.of(context).size.width*.15,
                    color: ColorResource.lightBlack,
                    child: HexagonWidget.flat(
                      width: MediaQuery.of(context).size.width*.125,
                      color: ColorResource.whiteColor,
                      child: Center(
                        child: Text(
                          "GO",
                          style: TextStyle(
                            color: ColorResource.lightBlack,
                            fontFamily: 'FontMain',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: _Hexagons(),
                child: Container(
                  color: ColorResource.lightBlack,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                  width: MediaQuery.of(context).size.width,
                  child: ClipPath(
                    clipper: _Hexagons(),
                    child: Container(
                      color: ColorResource.whiteColor,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class _Hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * .05, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * .91, size.height * .85);
    path.lineTo(size.width * 0.8, size.height * sqrt(3) / 2);
    path.lineTo(size.width * 0.05, size.height * sqrt(3) / 2);
    path.lineTo(0, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.05, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}


class _Hexagons extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width*.05, 0);
    path.lineTo(size.width*.9, 0);
    path.lineTo(size.width, size.height*.75);
    path.lineTo(size.width*0.95, size.height*sqrt(3)/2);
    path.lineTo(size.width*0.05, size.height*sqrt(3)/2);
    path.lineTo(0, size.height*sqrt(3)/4);
    path.lineTo(size.width*0.05,0);
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
//     path.lineTo(size.width*.05, 0);
//     path.lineTo(size.width*.95, 0);
//     path.lineTo(size.width, size.height*sqrt(3)/4);
//     path.lineTo(size.width*0.95, size.height*sqrt(3)/2);
//     path.lineTo(size.width*0.05, size.height*sqrt(3)/2);
//     path.lineTo(0, size.height*sqrt(3)/4);
//     path.lineTo(size.width*0.05,0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
//
// class _Hexagons extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width*.05, 0);
//     path.lineTo(size.width*.95, 0);
//     path.lineTo(size.width, size.height*sqrt(3)/4);
//     path.lineTo(size.width*0.95, size.height*sqrt(3)/2);
//     path.lineTo(size.width*0.05, size.height*sqrt(3)/2);
//     path.lineTo(0, size.height*sqrt(3)/4);
//     path.lineTo(size.width*0.05,0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
//
// class _Triangle extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width/2, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width/2,0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }