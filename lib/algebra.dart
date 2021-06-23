import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/grade7.dart';
import 'package:loginui/homepage.dart';

class Algebra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlgebraUI();
  }
}

class AlgebraUI extends StatefulWidget {
  @override
  _AlgebraUIState createState() => _AlgebraUIState();
}

class _AlgebraUIState extends State<AlgebraUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.yellow,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  height: MediaQuery.of(context).size.height * 0.53,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => GradeSevenUI(),
                                //     ));
                              },
                              child: Container(
                                color: Color(0xFFA6DBFA),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GradeSevenUI();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 30,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Algebra",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFFF33900)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 26.0, bottom: 12.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Learn With Experts",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFEB4A0B)),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.9,
                          color: Colors.blueAccent,
                          child: Hero(
                            tag: "algebra",
                            child: Image.asset(
                              "assets/images/algebra.png",
                              height: 100,
                              width: 150,
                              // fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Chapters",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 26.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          color: Color(0xFFf6beaa),
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.alarm,
                                size: 20,
                              ),
                              Text(
                                "5 hrs,20 min",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: Color(0xFF00fcab),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  color: Color(0xFF000000),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_circle_fill_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0, bottom: 3.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Introduction",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Intoduction To Algebra",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: Color(0xFFfbff0a),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  color: Color(0xFF000000),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_circle_fill_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0, bottom: 3.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Algebric Expression",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Learn expressions in algebra",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: Color(0xFFff4d0a),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  color: Color(0xFF000000),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_circle_fill_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0, bottom: 3.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Law of Indices",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Learn about law's of algebra",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: Color(0xFF7607ff),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  color: Color(0xFF000000),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_circle_fill_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0, bottom: 3.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Operations in Algebra",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Learn operations in algebra",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        color: Color(0xFFff0574),
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  color: Color(0xFF000000),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_circle_fill_outlined,
                                        size: 28,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 3.0, bottom: 3.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                // color: Colors.green,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Polynomials",
                                      // textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Polynomials of algebra",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
