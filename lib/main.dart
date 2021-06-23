import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/info.dart';
import 'package:loginui/registration.dart';
import 'package:loginui/homepage.dart';
import 'package:hexcolor/hexcolor.dart'; //this package is imported to use hex color code in color classes

import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/services.dart'; //this packgae is imported to use service of dart in mobile like customizing status bar

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPageSF();
  }
}

class LoginPageSF extends StatefulWidget {
  @override
  _LoginPageSFState createState() => _LoginPageSFState();
}

class _LoginPageSFState extends State<LoginPageSF> {
  @override
  void initState() {
    super.initState();
  }

  bool checkBoxValue =
      false; //this instance variable is set for checkbox to be unchecked
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState.validate()) {}
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Color(0xFF0C0C88),
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light),
    );

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.lato()
              .fontFamily), //ThemeData Class helps to make a single theme(font,size,color etc) for whole screen
      debugShowCheckedModeBanner:
          false, //this boolean variable helps to remove debug banner from app, as it indicates the app is in developing phase,by default it is set to true
      home: SafeArea(
        child: Scaffold(
          // resizeToAvoidBottomInset: false, //to avoid app resize when keyboard rises
          // scaffolod provides blank/empty structure for material app
          body: Container(
            // color: Colors.green,
            height: double.infinity,
            //safearea is a widget that provied necessary paddinbg for other widgets so that tye widgets dont get blocked from system items
            child: LayoutBuilder(builder: (context, Constraints) {
              //layout builder is a widget that Builds a widget tree that can depend on the parent widget's

              return SingleChildScrollView(
                // created scrolable screen, solves overflow errors
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 240,
                      child: Stack(
                        //stack adds widgets on top of eachother
                        children: [
                          Container(
                            height: 270,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                // color: Color(0xFFDF175A),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/background.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                              // positioned widgets helps to position the widgets of stack
                              left: MediaQuery.of(context).size.width * 0.39,
                              height: 70,
                              width: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/images/Umb1.png"),
                                )),
                              )),
                          Positioned(
                              left: MediaQuery.of(context).size.width * 0.23,
                              height: 100,
                              width: 60,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/images/Umb2.png"),
                                )),
                              )),
                          Positioned(
                              left: MediaQuery.of(context).size.width * 0.002,
                              height: 140,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/images/Umb3.png"),
                                )),
                              )),
                          Positioned(
                              left: MediaQuery.of(context).size.width - 150,
                              height: 280,
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/loginboy.png"),
                                )),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 70,
                            width: 90,
                          ),
                          Image.asset(
                            "assets/images/sikshya.png",
                            height: 20,
                            width: 90,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 5.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.37,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.073,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Material(
                                elevation: 20.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextFormField(
                                  keyboardType: TextInputType
                                      .name, //specifies input type in textfield
                                  textInputAction: TextInputAction
                                      .done, //provied actions to be done after input is given
                                  decoration: InputDecoration(
                                    hintText: "Username/Email",
                                    border: InputBorder
                                        .none, //to remove bottom border of textfield
                                    prefixIcon: Icon(
                                      CupertinoIcons.person,
                                      color: Colors.black,
                                    ), //to add icon inside textfield
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Username/Email cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            // Sizedbox works as padding
                            height: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.073,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Material(
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: TextFormField(
                                obscureText:
                                    true, //to make typed password invisible
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,

                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    CupertinoIcons.padlock,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Username/Email cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                    value: checkBoxValue,
                                    activeColor:
                                        Colors.black, //color for check box
                                    onChanged: (bool value) {
                                      // allows to tick and untick check box by setState method
                                      setState(() {
                                        checkBoxValue = value;
                                      });
                                    }),
                                Text("Remember Me")
                              ],
                            ),
                          ),
                          InkWell(
                            child: ElevatedButton(
                              onPressed: () {
                                // loadData();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Text(
                                "Login",
                              ), //eight: MediaQuery.of(context).size.height * 0.073,
                              //  width: MediaQuery.of(context).size.width * 0.75,
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.35,
                                      MediaQuery.of(context).size.height *
                                          0.065),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  primary: HexColor("#0C0C88"),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 6),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Registration()));
                                  },
                                  child: Text(
                                    "Register Now",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: HexColor("#0C0C88"),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/backgroundbuttom.png"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                )),
              );
            }),
          ),
        ),
      ),
    );
  }

  // Future<Timer> loadData() async {
  //   Timer(Duration(seconds: 10), onload);
  // }

  // void onload() {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
  // }
}
