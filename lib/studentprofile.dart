import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/accounteditdetails.dart';
import 'package:loginui/editprofile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileUI();
  }
}

class ProfileUI extends StatefulWidget {
  bool _isContainerVisible = false;
  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  bool _isContainerVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            // color: Colors.yellow,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                //Entire app column
                children: [
                  Container(
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFFFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.3), //color of shadow
                                        spreadRadius: 4, //spread radius
                                        blurRadius: 3, // blur radius
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ShaderMask(
                                    child: Text(
                                      "Nabin Gurung",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                    shaderCallback: (rect) {
                                      return LinearGradient(colors: [
                                        Color(0xFF4E0EFD),
                                        Color(0xFF0BB0F1),
                                        Color(0xFF0BCEF1),
                                        Color(0xFF03B3E9),
                                      ]).createShader(rect);
                                    }),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: ShaderMask(
                                    child: Text(
                                      "Grade 12",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                    shaderCallback: (rect) {
                                      return LinearGradient(colors: [
                                        Color(0xFFFD320E),
                                        Color(0xFF0BE2F1),
                                        Color(0xFF820BF1),
                                        Color(0xFFE90348),
                                      ]).createShader(rect);
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green,
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.yellow,
                              child: SingleChildScrollView(
                                child: Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Account Details",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0906B1),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3.0, bottom: 8.0),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditAccountUI()));
                                        },
                                        icon: Icon(
                                          Icons.edit,
                                          color: Color(0xFF4C03F5),
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0, top: 1),
                            child: ListTile(
                              leading: ShaderMask(
                                  child: Icon(
                                    CupertinoIcons.phone,
                                    color: Colors.white,
                                    size: 32.0,
                                  ),
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Color(0xFF4E0EFD),
                                      Color(0xFF0BB0F1),
                                      Color(0xFF0BCEF1),
                                      Color(0xFF03B3E9),
                                    ]).createShader(rect);
                                  }),
                              title: Text(
                                "+977-9846458568",
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ListTile(
                              leading: ShaderMask(
                                  child: Icon(
                                    CupertinoIcons.mail,
                                    color: Colors.white,
                                    size: 32.0,
                                  ),
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Color(0xFF4E0EFD),
                                      Color(0xFF0BB0F1),
                                      Color(0xFF0BCEF1),
                                      Color(0xFF03B3E9),
                                    ]).createShader(rect);
                                  }),
                              title: Text(
                                "nibangrg22@gmail.com",
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Divider(
                            height: 5,
                            color: Colors.black,
                          ),
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Profile Details",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0906B1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 3.0),
                                  child: IconButton(
                                    onPressed: () {
                                      // accountDetails();
                                    },
                                    icon: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EditProfileUI()));
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Color(0xFF4C03F5),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  CupertinoIcons.profile_circled,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Text(
                            "Nabin Gurung",
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  CupertinoIcons.mail_solid,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Text(
                            "nibangrg22@gmail.com",
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  Icons.male,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Text(
                            "Male",
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  CupertinoIcons.location,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Wrap(direction: Axis.horizontal, children: [
                            Text(
                              "Kadaghari, Laure Chowk, Nepal",
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.normal),
                            ),
                          ]),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  CupertinoIcons.calendar,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Text(
                            "Date of Birth",
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: ShaderMask(
                                child: Icon(
                                  CupertinoIcons.nosign,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                                shaderCallback: (rect) {
                                  return LinearGradient(colors: [
                                    Color(0xFF4E0EFD),
                                    Color(0xFF0BB0F1),
                                    Color(0xFF0BCEF1),
                                    Color(0xFF03B3E9),
                                  ]).createShader(rect);
                                }),
                          ),
                          title: Text(
                            "Sign Out",
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
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
