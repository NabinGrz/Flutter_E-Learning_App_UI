import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginui/main.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Color(0xFF0C0C88),
//   ));
//   runApp(MaterialApp(
//     home: SplashScreen(),
//   ));
// }

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/infobackground.png"),
        fit: BoxFit.fill,
      )),
    );
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 8), onDoneLoading);
  }

  onDoneLoading() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPageSF()));
  }
}
