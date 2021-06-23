import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loginui/grade7.dart';
import 'package:loginui/grade8.dart';
import 'package:loginui/grade9.dart';
import 'package:loginui/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset:
            false, //to avoid app resize when keyboard rises
        backgroundColor: Color(0xFFFFFFFF),
        drawer: HomePageDrawer(),
        body: SafeArea(child: LayoutBuilder(builder: (context, Constraints) {
          return LayoutBuilder(builder: (context, Constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF0C0C88),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            elevation: 8.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                              ),
                              onPressed: () => Scaffold.of(context)
                                  .openDrawer(), //to open drawer with the help of icons without any gloabl scafold keys
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Material(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.notifications,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: MediaQuery.of(context).size.width *
                                      0.000001,
                                  bottom: 1,
                                  height: 200,
                                  width: 200,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        scale: 2.0,
                                        image: AssetImage(
                                          "assets/images/homepageboy.png",
                                        ),
                                        // fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                    // positioned widgets helps to position the widgets of stack
                                    // left: 120,
                                    // height: 180,
                                    // width: 150,
                                    child: Container(
                                  height: 200,
                                  width: 152,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/items.png"),
                                  )),
                                )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 140,
                                    bottom: 40,
                                    child: Container(
                                      child: Text(
                                        "Welcome To",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 100,
                                    bottom: 10,
                                    child: Container(
                                      child: Text(
                                        "Sikshya",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Color(0xFFFB8D34),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 109,
                                    height: 160,
                                    bottom: 10,
                                    width: 120,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/leafes.png"),
                                      )),
                                    )),
                              ],
                            ),
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                // bottomRight: Radius.circular(50)
                              ),
                              color: Color(0xFF0C0C88),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 14.0, right: 10.0),
                                child: Text(
                                  "Hello!!",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF0909),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Nabin",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/waving.png",
                                height: 32,
                                width: 32,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.90,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 2, // blur radius
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            child: Material(
                              elevation: 14.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                                keyboardType: TextInputType
                                    .name, //specifies input type in textfield
                                textInputAction: TextInputAction
                                    .search, //provied actions to be done after input is given
                                decoration: InputDecoration(
                                  hintText: "Find Your Courses",
                                  hintStyle: TextStyle(fontSize: 18),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.search,
                                    color: Colors.black54,
                                    size: 25,
                                  ),

                                  ///to add icon inside textfield
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Lessons For",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                      ),
                                      Text(
                                        "More>>",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600]),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  )),
                            ),
                          )
                        ],
                      ),

                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xFFFFFFFF),
                        child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, bottom: 2.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
//==================================================================
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
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
                                    child: Hero(
                                      tag: "grade7",
                                      child: Container(
                                        //for grade 7

                                        height: 175,
                                        width: 130,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Grade 7 All Subjects",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/grade7.png"),
                                            fit: BoxFit.contain,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          color: Color(0xFFFFD30F),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.7), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 5, // blur radius
                                              offset: Offset(2,
                                                  2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
//==================================================================
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GradeEightUI();
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
                                    child: Hero(
                                      tag: "grade8",
                                      child: Container(
                                        //for grade 8

                                        height: 175,
                                        width: 130,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Grade 8 All Subjects",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/grade8.png"),
                                            fit: BoxFit.contain,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          color: Color(0xFFFA6A17),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.7), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 5, // blur radius
                                              offset: Offset(2,
                                                  2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
//==========================================================
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GradeNineUI();
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
                                    child: Hero(
                                      tag: "grade9",
                                      child: Container(
                                        //for grade 9
                                        height: 175,
                                        width: 130,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Grade 9 All Subjects",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/grade9.png"),
                                            fit: BoxFit.contain,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          color: Color(0xFF95F725),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.7), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 5, // blur radius
                                              offset: Offset(2,
                                                  2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
//================================================
                                  Container(
                                    //for grade 10
                                    height: 175,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Grade 10 All Subjects",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/grade10.png"),
                                        fit: BoxFit.contain,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      color: Color(0xFF09EBF3),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.7), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 5, // blur radius
                                          offset: Offset(2,
                                              2), // changes position of shadow
                                          //first paramerter of offset is left-right
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
//================================================
                                  Container(
                                    //for grade 11
                                    height: 175,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Grade 11 All Subjects",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/grade11.png",
                                        ),
                                        fit: BoxFit.scaleDown,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      color: Color(0xFF8B50CF),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.7), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 5, // blur radius
                                          offset: Offset(2,
                                              2), // changes position of shadow
                                          //first paramerter of offset is left-right
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
//================================================
                                  Container(
                                    //for grade 12
                                    height: 175,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Grade 12 All Subjects",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/grade12.png"),
                                        fit: BoxFit.contain,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      color: Color(0xFFEC3F6B),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.7), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 5, // blur radius
                                          offset: Offset(2,
                                              2), // changes position of shadow
                                          //first paramerter of offset is left-right
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Skills To Pump",
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.26,
                                  ),
                                  Text(
                                    "More>>",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600]),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              )),
                        ),
                      ),
//========================SKILLS TO PUMP============================================
//========================SKILLS TO PUMP============================================
//========================SKILLS TO PUMP============================================
//========================SKILLS TO PUMP============================================
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              //for graphics designing
                              height: MediaQuery.of(context).size.height * 0.13,
                              width: MediaQuery.of(context).size.width * 0.90,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF13FAC8),
                                    Color(0xFF13EBFA)
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.7), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),

                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/graphicdesigning.png",
                                        height: 100,
                                        width: 80,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Graphics Designing",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFF1390B),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "Ilustrator,Figma...",
                                          style: TextStyle(
                                              color: Color(0xFFF0461B),
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.08,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.9), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 2, // blur radius
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for learn python
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFDF1436),
                                      Color(0xFFDF14A2),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/python.png",
                                        height: 60,
                                        width: 50,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Learn Python",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFE2F819),
                                                fontSize: 21),
                                          ),
                                          Text(
                                            "Basic,Panda,Django...",
                                            style: TextStyle(
                                                color: Color(0xFFD7E741),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for flutter
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFF8F535),
                                      Color(0xFFF8BA35),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/flutter.png",
                                        height: 80,
                                        width: 60,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Flutter",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF08107A),
                                                fontSize: 21),
                                          ),
                                          Text(
                                            "Basic",
                                            style: TextStyle(
                                                color: Color(0xFF232A8D),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for design website
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFF3166B),
                                      Color(0xFFF316BC),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/website.png",
                                        height: 90,
                                        width: 70,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Design Website",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF0BA7F0),
                                                fontSize: 21),
                                          ),
                                          Text(
                                            "Basic To Advance",
                                            style: TextStyle(
                                                color: Color(0xFF2EA7DF),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for react native
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFFF7C10),
                                      Color(0xFFFF1010),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/reaact.png",
                                        height: 80,
                                        width: 60,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "React Native",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF11D3F5),
                                                fontSize: 21),
                                          ),
                                          Text(
                                            "Basic",
                                            style: TextStyle(
                                                color: Color(0xFF35D7F3),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for java
                                height:
                                    MediaQuery.of(context).size.height * 0.13,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF10FF88),
                                      Color(0xFF10FF10),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/java.png",
                                        height: 100,
                                        width: 80,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ShaderMask(
                                            child: Text(
                                              "Java",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 21),
                                            ),
                                            shaderCallback: (rect) {
                                              return LinearGradient(colors: [
                                                Color(0xFF2680F5),
                                                Color(0xFF064A99),
                                              ]).createShader(rect);
                                            },
                                          ),
                                          Text(
                                            "Core Java,Swing,AWT...",
                                            style: TextStyle(
                                                color: Color(0xFF2480D6),
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //for laravel
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.90,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF0BCFF1),
                                        Color(0xFF0B9DF1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.7), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 5, // blur radius
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                  ),

                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.20,
                                        child: Image.asset(
                                          "assets/images/laravel.png",
                                          height: 80,
                                          width: 60,
                                          // alignment: Alignment.centerLeft,
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ShaderMask(
                                                child: Text(
                                                  "Laravel",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 21),
                                                ),
                                                shaderCallback: (rect) {
                                                  return LinearGradient(
                                                      colors: [
                                                        Color(0xFFF14C0B),
                                                        Color(0xFFF18D0B),
                                                      ]).createShader(rect);
                                                }),
                                            Text(
                                              "Basic To Advance",
                                              style: TextStyle(
                                                  color: Color(0xFFEE6631),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.6), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 2, // blur radius
                                              offset: Offset(0, 0),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
//=================================================================
                    ],
                  )
                ],
              ),
            );
          });
        })),
      ),
    );
  }
}
