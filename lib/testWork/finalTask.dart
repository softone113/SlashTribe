import 'package:flutter/material.dart';

import '../utils/color.dart';

class FinalTask extends StatefulWidget {
  const FinalTask({Key? key}) : super(key: key);

  @override
  State<FinalTask> createState() => _FinalTaskState();
}

class _FinalTaskState extends State<FinalTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            // ClipPath(
            //   clipper: _hexagon(),
            //   child: Container(
            //     width: 100,
            //     padding: EdgeInsets.all(5),
            //     height: 100,
            //     color: Colors.black87,
            //     child: ClipPath(
            //       clipper: _hexagon(),
            //       child: Container(
            //         width: 100,
            //         height: 100,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 100,
            // ),
            // ClipPath(
            //   clipper: _hexagonOuter(),
            //   child: Container(
            //     width: 60,
            //     padding: EdgeInsets.all(5),
            //     height: 60,
            //     color: Colors.black87,
            //     child: ClipPath(
            //       clipper: _hexagon(),
            //       child: Container(
            //         width: 60,
            //         height: 60,
            //         color: ColorResource.whiteColor,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Text(
            //             "GO",
            //             style: TextStyle(
            //               color: ColorResource.lightBlack,
            //               fontFamily: 'FontMain',
            //               fontWeight: FontWeight.bold,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            ClipPath(
              clipper: _OrangeShape(),
              child: Container(
                width: 40,
                height: 60,
                color: ColorResource.orangeColor,
                child: Container(),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Transform.rotate(
                angle: 0.65,
                child: ClipPath(
                  clipper: _OrangeShape(),
                  child: Container(
                    width: 100,
                    height: 80,
                    padding: EdgeInsets.only(left: 10,right: 25),
                    color: ColorResource.lightBlack,
                    child: Transform.rotate(
                      angle: 0.01,
                      child: ClipPath(
                        clipper: _OrangeShape(),
                        child: Container(
                          width: 20,
                          color: ColorResource.orangeColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  Center(
                    child: Transform.rotate(
                      angle: 0.45,
                      child: ClipPath(
                        clipper: _OrangeShape(),
                        child: Container(
                          width: 100,
                          height: 80,
                          padding: EdgeInsets.only(left: 10,right: 25),
                          color: ColorResource.lightBlack,
                          child: Transform.rotate(
                            angle: 0.03,
                            child: ClipPath(
                              clipper: _OrangeShape(),
                              child: Container(
                                width: 20,
                                color: ColorResource.orangeColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: _hexagonOuter(),
                    child: Container(
                      width: 70,
                      padding: EdgeInsets.only(left: 6,right: 5,top: 5,bottom: 8),
                      height: 60,
                      color: Colors.black87,
                      child: ClipPath(
                        clipper: _hexagon(),
                        child: Container(
                          width: 60,
                          height: 60,
                          color: ColorResource.whiteColor,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "GO",
                              style: TextStyle(
                                color: ColorResource.lightBlack,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * .4, 0);
    path.lineTo(size.width * .8, 0);
    path.lineTo(size.width, size.height * .4);
    path.lineTo(size.width * .8, size.height * .8);
    path.lineTo(size.width * .4, size.height * .8);
    path.lineTo(size.width * .2, size.height * .4);
    path.lineTo(size.width * .4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _hexagonOuter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * .4, 0);
    path.lineTo(size.width * .8, 0);
    path.lineTo(size.width, size.height * .4);
    path.lineTo(size.width * .8, size.height * .8);
    path.lineTo(size.width * .4, size.height * .8);
    path.lineTo(0, size.height * .8);
    path.lineTo(size.width * .4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _OrangeShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * .2, size.height * .15);
    path.lineTo(size.width * .4, 0);
    path.lineTo(size.width * .4, size.height * .85);
    path.lineTo(size.width * .2, size.height);
    path.lineTo(size.width * .2, size.height * .15);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
