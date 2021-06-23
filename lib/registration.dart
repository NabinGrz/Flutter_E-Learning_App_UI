import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loginui/homepage.dart';
import 'package:loginui/main.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  bool checkBoxValue = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset:
              false, //to avoid app resize when keyboard rises
          body: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            // color: Colors.yellow,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 90,
                    width: 100,
                  ),
                  Image.asset(
                    "assets/images/sikshya.png",
                    height: 30,
                    width: 100,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Create your free account",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Material(
                                elevation: 20.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType
                                      .name, //specifies input type in textfield
                                  textInputAction: TextInputAction
                                      .next, //provied actions to be done after input is given
                                  decoration: InputDecoration(
                                    hintText: "First Name",
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder
                                        .none, //to remove bottom border of textfield
                                    suffixIcon: Icon(
                                      CupertinoIcons.person_fill,
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
                            height: 10,
                          ),
                          Container(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Material(
                                elevation: 20.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType
                                      .name, //specifies input type in textfield
                                  textInputAction: TextInputAction
                                      .next, //provied actions to be done after input is given
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder
                                        .none, //to remove bottom border of textfield
                                    suffixIcon: Icon(
                                      CupertinoIcons.person_fill,
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
                            height: 10,
                          ),
                          Container(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Material(
                                elevation: 20.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.name,
                                  //specifies input type in textfield
                                  textInputAction: TextInputAction
                                      .next, //provied actions to be done after input is given
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder
                                        .none, //to remove bottom border of textfield
                                    suffixIcon: Icon(
                                      Icons.email,
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
                            height: 10,
                          ),
                          Container(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Material(
                                elevation: 20.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText:
                                      true, //specifies input type in textfield
                                  textInputAction: TextInputAction
                                      .go, //provied actions to be done after input is given
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder
                                        .none, //to remove bottom border of textfield
                                    suffixIcon: Icon(
                                      CupertinoIcons.lock_fill,
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
                                Text(
                                  "I agree to the terms and conditions",
                                  style: TextStyle(color: Colors.orange),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color(0xFFF48124),
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 6),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 27,
                      child: RichText(
                        //to give different styles in same text value
                        text: TextSpan(
                            text: "OR ",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.normal),
                            children: [
                              TextSpan(
                                text: "Sign Up With",
                                style: TextStyle(color: Colors.black),
                              )
                            ]),
                      )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 30,
                          width: 40,
                        ),
                        Image.asset(
                          "assets/images/gmail.png",
                          height: 30,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 33,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an Account?",
                              style: TextStyle(color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Color(0xFF07158F),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPageSF()));
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.2,
                  // ),
                  Image.asset(
                    "assets/images/registrationbuttom.png",
                    fit: BoxFit.fitWidth,
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
