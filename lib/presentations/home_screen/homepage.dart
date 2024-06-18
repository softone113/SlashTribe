import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:slash_tribe/new.dart';
import 'package:slash_tribe/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;
    return GestureDetector(
      onTap: () {},
      child: SafeArea(
          child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * .5,
                        color: Colors.yellow,
                        child: Stack(
                          children: [
                            Align(
                              heightFactor: height * .001,
                              alignment: Alignment.topLeft,
                              child: Transform.translate(
                                offset: const Offset(-40, -28),
                                child: Transform.rotate(
                                  angle: 0,
                                  child: Opacity(
                                    opacity: 0.2,
                                    child: Image.asset(
                                      "assets/images/blackhexagon.png",
                                      width: 200,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                                left: 50,
                                child: HexagonImage(
                                    imageUrl:
                                        'https://images.pexels.com/photos/47547/squirrel-animal-cute-rodents-47547.jpeg?cs=srgb&dl=pexels-pixabay-47547.jpg&fm=jpg',
                                    size: 70))
                          ],
                        ),
                      ),
                      Container(
                        width: width * .5,
                        height: 100,
                        color: Colors.redAccent,
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HexagonWidget.pointy(
                          height: height*.1,
                          color: ColorResource.orangeColor,
                          child: Text("0",style: TextStyle(color:ColorResource.whiteColor,fontSize: 30),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HexagonWidget.pointy(
                          height: height*.1,
                          color: ColorResource.orangeColor,
                          child: Text("5",style: TextStyle(color:ColorResource.whiteColor,fontSize: 30),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HexagonWidget.pointy(
                          height: height*.1,
                          color: ColorResource.lightBlack,
                          child: Text("1",style: TextStyle(color:ColorResource.whiteColor,fontSize: 30),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HexagonWidget.pointy(
                          height: height*.1,
                          color: ColorResource.lightBlack,
                          child: Text("5",style: TextStyle(color:ColorResource.whiteColor,fontSize: 30),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("DAYS",style: TextStyle(fontSize: 20),),
                      Text("HOURS",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: HexagonWidget.flat(
                          width: 100,
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: HexagonType.FLAT.ratio,
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Positioned(
                                bottom: 20,
                                right: 10,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset("assets/images/slasht.png",height: 70,),
                      )
                    ],
                  ),
                  // Align(
                  //   heightFactor: height * .001,
                  //   alignment: Alignment.topLeft,
                  //   child: Transform.translate(
                  //     offset: const Offset(-60, -90),
                  //     child: Transform.rotate(
                  //       angle: .5,
                  //       child: Opacity(
                  //         opacity: 0.2,
                  //         child: Image.asset(
                  //           "assets/images/blackhexagon.png",
                  //           width: 200,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // HexagonImage(
                  //     imageUrl:
                  //         'https://images.pexels.com/photos/47547/squirrel-animal-cute-rodents-47547.jpeg?cs=srgb&dl=pexels-pixabay-47547.jpg&fm=jpg',
                  //     size: 80)
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
