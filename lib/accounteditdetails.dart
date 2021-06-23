import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/studentprofile.dart';

class EditAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EditAccountUI();
  }
}

class EditAccountUI extends StatefulWidget {
  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccountUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.yellow,
        child: Container(
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height * 0.50,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Align(
                // alignment: Alignment.topLeft,
                child: Container(
                  // alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24.0, top: 8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              elevation: 20.0,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Profile()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                    size: 30,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 27.0, top: 50),
                          child: Text(
                            "Edit Account Details",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0906B1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width * 0.87,
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ShaderMask(
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
                ),
                title: TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Number",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF0847F3),
                      )),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                title: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF0847F3),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 90.0, right: 90.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(20, 50),
                      primary: Color(0xFF0C30CF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                ),
              )
            ],
          ),
        ),
        // color: Colors.red,
      ),
    );
  }
}
