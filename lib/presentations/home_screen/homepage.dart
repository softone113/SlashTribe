import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:shape_maker/shape_maker.dart';
import 'package:shape_maker/shape_maker_painter.dart';
import 'package:slash_tribe/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    final height = mq.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          body: GestureDetector(
              onTap: () {
                // if (_scaffoldKey.currentState!.isDrawerOpen) {
                //   Navigator.pop(context);
                // }
              },
              child: Container(
                width: width,
                height: height,
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
                            width: width * .6,
                            height: 200,
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
                                  top: 118,
                                  left: 40,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: HexagonWidget.flat(
                                          width: 100,
                                          child: AspectRatio(
                                            aspectRatio: HexagonType.FLAT.ratio,
                                            child: Image.asset(
                                              'assets/images/profile.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/slasht.png",
                                        height: 70,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width * .4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                    icon: Image.asset(
                                      "assets/images/hamburger.png",
                                      width: 40,
                                      fit: BoxFit.contain,
                                    ),
                                    onPressed: () {
                                      // _scaffoldKey.currentState!
                                      //     .openEndDrawer();
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: width,
                        height: 100,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(10, 10)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter text...',
                                  ),
                                ),
                              ),
                            ),
                            HexagonWidget.flat(
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
                            Transform.rotate(
                              angle: 0.5,
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
                            Stack(
                              children: [
                                HexagonWidget.flat(
                                  width: 60,
                                  color: ColorResource.lightBlack,
                                  child: HexagonWidget.flat(
                                    width: 50,
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
                                Positioned(
                                  right: 40,
                                  bottom: 14,
                                  child: Align(
                                alignment: Alignment.bottomRight,
                                child: Transform.rotate(
                                  angle: 0,
                                  child: ShapeMaker(
                                    shapeType: ShapeType.triangle,
                                    bgColor: ColorResource.lightBlack,
                                    width: 30,
                                    height: 32,
                                  ),
                                ),
                              ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HexagonWidget.pointy(
                              width: 70,
                              color: ColorResource.orangeColor,
                              child: Text(
                                "0",
                                style: TextStyle(
                                  color: ColorResource.whiteColor,
                                  fontSize: 30,
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HexagonWidget.pointy(
                              width: 70,
                              color: ColorResource.orangeColor,
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: ColorResource.whiteColor,
                                  fontSize: 30,
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HexagonWidget.pointy(
                              width: 70,
                              color: ColorResource.lightBlack,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: ColorResource.whiteColor,
                                  fontSize: 30,
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HexagonWidget.pointy(
                              width: 70,
                              color: ColorResource.lightBlack,
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: ColorResource.whiteColor,
                                  fontSize: 30,
                                  fontFamily: 'FontMain',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "DAYS",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "HOURS",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            "To Launch..",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Transform.translate(
                          offset: Offset(35, 0),
                          child: Opacity(
                            opacity: 0.2,
                            child: Image.asset(
                              "assets/images/blackhexagon.png",
                              width: 200,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/images/bottomblacklogo.png",
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              )),
          // endDrawer: Drawer(
          //   backgroundColor: ColorResource.lightBlack,
          //   child: ListView(
          //     padding: EdgeInsets.zero,
          //     children: [
          //       // DrawerHeader(
          //       //   decoration: BoxDecoration(
          //       //     color: ColorResource.orangeColor,
          //       //   ),
          //       //   child: Text(
          //       //     'Menu',
          //       //     style: TextStyle(
          //       //       color: ColorResource.whiteColor,
          //       //       fontSize: 24,
          //       //     ),
          //       //   ),
          //       // ),
          //       SizedBox(
          //         height: 50,
          //       ),
          //       Container(
          //         width: width,
          //         child: Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 18.0),
          //           child: Align(
          //               alignment: Alignment.topRight,
          //               child: IconButton(
          //                   onPressed: () {},
          //                   icon: Icon(
          //                     Icons.close,
          //                     size: 30,
          //                     color: ColorResource.whiteColor,
          //                   ))),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 30,
          //       ),
          //       ListTile(
          //         title: Text(
          //           'Blog',
          //           style: TextStyle(
          //             color: ColorResource.whiteColor,
          //           ),
          //         ),
          //         trailing: Icon(
          //           Icons.navigate_next,
          //           color: ColorResource.whiteColor,
          //         ),
          //         onTap: () {
          //           // Implement navigation or action for Blog
          //           Navigator.pop(context); // Close the drawer
          //         },
          //       ),
          //       ListTile(
          //         title: Text('Social',
          //             style: TextStyle(
          //               color: ColorResource.whiteColor,
          //             )),
          //         trailing: Icon(
          //           Icons.navigate_next,
          //           color: ColorResource.whiteColor,
          //         ),
          //         onTap: () {
          //           // Implement navigation or action for Social
          //           Navigator.pop(context); // Close the drawer
          //         },
          //       ),
          //       ListTile(
          //         title: Text('Our Story',
          //             style: TextStyle(
          //               color: ColorResource.whiteColor,
          //             )),
          //         trailing: Icon(
          //           Icons.navigate_next,
          //           color: ColorResource.whiteColor,
          //         ),
          //         onTap: () {
          //           // Implement navigation or action for Our Story
          //           Navigator.pop(context); // Close the drawer
          //         },
          //       ),
          //       ListTile(
          //         title: Text('Privacy Policy',
          //             style: TextStyle(
          //               color: ColorResource.whiteColor,
          //             )),
          //         trailing: Icon(
          //           Icons.navigate_next,
          //           color: ColorResource.whiteColor,
          //         ),
          //         onTap: () {},
          //       ),
          //       Divider(color: ColorResource.whiteColor),
          //       ListTile(
          //         title: Text('Logout',
          //             style: TextStyle(
          //               color: ColorResource.whiteColor,
          //             )),
          //         trailing: Icon(
          //           Icons.navigate_next,
          //           color: ColorResource.whiteColor,
          //         ),
          //         onTap: () {
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
