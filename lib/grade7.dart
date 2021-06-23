import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/algebra.dart';
import 'package:loginui/homepage.dart';

class GradeSevenUI extends StatefulWidget {
  @override
  _GradeSevenUIState createState() => _GradeSevenUIState();
}

class _GradeSevenUIState extends State<GradeSevenUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset:
              false, //to avoid app resize when keyboard rises
          body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD30F),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: MediaQuery.of(context).size.width - 200,
                          bottom: -20,
                          child: Hero(
                              tag: "grade7",
                              child: Image.asset("assets/images/grade7UI.png")),
                          height: 200,
                          width: 200,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Material(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 20.0,
                                    child: Icon(
                                      Icons.arrow_back,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 130,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 15),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Material(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    elevation: 20.0,
                                    child: Icon(
                                      Icons.search,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Positioned(
                          left: 2,
                          bottom: 30,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: Text(
                                "Grade 7 All Subjects",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0B0ED4),
                                    fontSize: 30,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          bottom: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Text(
                              "8 Subject | 90 Videos",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xFF8D8FDA),
                                  fontSize: 12,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        width: MediaQuery.of(context).size.height * 0.43,
                        // color: Colors.red,
                        child: Text(
                          "What do you want to learn today?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF000007),
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            // fontFamily: GoogleFonts.montserrat().fontFamily,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.83,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 2, // blur radius
                          offset: Offset(0, 0), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: Material(
                      elevation: 14.0,
                      color: Color(0xFFE4E4EC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),

                        keyboardType: TextInputType
                            .name, //specifies input type in textfield
                        textInputAction: TextInputAction
                            .search, //provied actions to be done after input is given
                        decoration: InputDecoration(
                          hintText: "Find Your Subjects",
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
                  Container(
                    height: 195,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -2,
                          bottom: -20,
                          child: Image.asset("assets/images/learn.png"),
                          height: 200,
                          width: 200,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 130,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Positioned(
                          left: 2,
                          bottom: 76,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: Text(
                                "What would you like to learn?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFFF36716),
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          bottom: 53,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                "Learn With Experts", //learnwithexperts
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF041D01),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          bottom: -2,
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(40, 40),
                                    primary: Color(0xFFFFFFFF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.85,
                    // color: Colors.yellow,
                    child: Text(
                      "For You",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.85,
                    // color: Colors.yellow,
                    child: Text(
                      "Mathematics",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
//=================================FOR YOU==============================================================

                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.yellow,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          //MATHMETIC
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                    pageBuilder:
                                        (context, animation, secondAnimation) {
                                      return AlgebraUI();
                                    },
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return Material(
                                        elevation: 12,
                                        child: SlideTransition(
                                          position: animation.drive(Tween(
                                                  begin: Offset(1, 0),
                                                  end: Offset(0, 0))
                                              .chain(CurveTween(
                                                  curve: Curves.easeOutCubic))),
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
                              tag: "algebra",
                              child: Container(
                                //ALGEBRA
                                height: 175,
                                width: 130,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Algebra",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/algebra.png"),
                                    fit: BoxFit.contain,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  color: Color(0xFFFFD30F),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(
                                          2, 2), // changes position of shadow
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
                          Container(
                            //GEOMETRY
                            height: 175,
                            width: 130,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Geometry",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/geometry.png"),
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomCenter,
                              ),
                              color: Color(0xFFF7238D),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.7), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),

//======================================SCIENCE==========================================================
                  SizedBox(height: 20),
                  Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.85,
                    // color: Colors.yellow,
                    child: Text(
                      "Science",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.height * 0.24,
                      // width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            //ALGEBRA
                            height: 175,
                            width: 130,

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Light",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("assets/images/bulb.png"),
                                fit: BoxFit.scaleDown,
                                scale: 0.5,
                                alignment: Alignment.bottomCenter,
                              ),
                              color: Color(0xFFFF5B0F),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.7), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            //GEOMETRY
                            height: 175,
                            width: 130,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Electricity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/electricity.png"),
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomCenter,
                              ),
                              color: Color(0xFFC618F1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.7), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            //GEOMETRY
                            height: 175,
                            width: 130,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Earth & Space",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/planet.png"),
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.bottomCenter,
                              ),
                              color: Color(0xFF1CF1B1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.7), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 5, // blur radius
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // color: Colors.yellow,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Find More >>",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
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
      ),
    );
  }
}
