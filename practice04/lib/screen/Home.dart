import 'package:flutter/material.dart';
import 'package:practice04/screen/User.dart';
import 'package:practice04/screen/Contact.dart';
import 'package:practice04/screen/Group.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
        actions: <Widget>[
          Image.asset("images/pn-logo.png"),
        ],
      ),
      
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Mobile Navigation",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(color: Colors.cyan),
            ),
            ListTile(
              title: Text("User"),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => User()));
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(
                Icons.phone,
                color: Colors.cyan,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
            ListTile(
              title: Text("Group"),
              leading: Icon(
                Icons.group,
                color: Colors.purple,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Group()));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/sreynet.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Center(
            child: Text(
              "Sreynet.Hak",
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
