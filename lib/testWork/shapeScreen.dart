import 'package:flutter/material.dart';
import 'package:slash_tribe/utils/color.dart';

class ShapeScreen extends StatefulWidget {
  const ShapeScreen({Key? key}) : super(key: key);

  @override
  State<ShapeScreen> createState() => _ShapeScreenState();
}

class _ShapeScreenState extends State<ShapeScreen> {
  @override
  Widget build(BuildContext context) {
    final mq=MediaQuery.of(context).size;
    final height=mq.height;
    final width=mq.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              ClipPath(
                clipper: _OrangeShape(),
                child: Container(
                  width: width,
                  height: 40,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20,),
              ClipPath(
                clipper: _GoButtonOuterShape(),
                child: Container(
                  width: width,
                  height: 100,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20,),
              ClipPath(
                clipper: _GoButtonInnerShape(),
                child: Container(
                  width: width,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20,),
              ClipPath(
                clipper: _SearchBarOuterShape(),
                child: Container(
                  width: width,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height:20),
              Container(
                width: width,
                height: 60,
                color: ColorResource.outlineBtnColor,
                child: Row(
                  children: [
                    Expanded(
                      child: ClipPath(
                        clipper: _SearchBarOuterShape(),
                        child: Container(
                          width: width,
                          height: 100,
                          color: ColorResource.lightBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OrangeShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width*.85, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width*.15, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _GoButtonOuterShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width*.4, 0);
    path.lineTo(size.width * .8, 0);
    path.lineTo(size.width, size.height*.5);
    path.lineTo(size.width*.8, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width*.4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _GoButtonInnerShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width*.25, 0);
    path.lineTo(size.width * .75, 0);
    path.lineTo(size.width, size.height*.5);
    path.lineTo(size.width*.75, size.height);
    path.lineTo(size.width*.25, size.height);
    path.lineTo(0, size.height*.5);
    path.lineTo(size.width*.25, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class _SearchBarOuterShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width*.05, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width*.95, size.height);
    path.lineTo(size.width*.05, size.height);
    path.lineTo(0, size.height*.5);
    path.lineTo(size.width*.05, 0);
    path.lineTo(size.width*.05, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}