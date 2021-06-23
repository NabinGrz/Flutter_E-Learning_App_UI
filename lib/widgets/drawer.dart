import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/studentprofile.dart';

class HomePageDrawer extends StatefulWidget {
  @override
  _HomePageDrawerState createState() => _HomePageDrawerState();
}

class _HomePageDrawerState extends State<HomePageDrawer> {
  @override
  bool isSwitched = false;
  bool tileSelected = false;
  drawerItemsAction() {
    Colors.black;
  }

  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/images/drawer.png"))),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.red, Colors.yellow]),
              // image: DecorationImage(
              //     image: AssetImage("assets/images/background.png"))
            ),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Nabin Gurung",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              accountEmail: Text("nobig22@gmail.com",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileUI()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/nabin.jpg"),
                ),
              ),
            ),
          ),
          SwitchListTile(
            value: isSwitched,
            activeColor: Color(0xFF2FF339),
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
            title: Text(
              "Dark Mode",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Color(0xFFCBD3CC),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.local_activity_sharp,
              color: Colors.white,
            ),
            title: Text(
              "Activity",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.book_solid,
              color: Colors.white,
            ),
            title: Text(
              "Learning Analysis",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.play_circle_fill,
              color: Colors.white,
            ),
            title: Text(
              "Courses",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Color(0xFFCBD3CC),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Sign Out",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              "Terms & Conditions",
              textScaleFactor: 1.3,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ));
  }
}
