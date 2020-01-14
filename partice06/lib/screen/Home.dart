import 'package:flutter/material.dart';
import 'package:partice06/screen/User.dart';
import 'package:partice06/screen/Contact.dart';
import 'package:partice06/screen/Group.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Home"),
        actions: <Widget>[
          Image.asset("images/smart.png"),
        ],

      ),
    );
  }
}