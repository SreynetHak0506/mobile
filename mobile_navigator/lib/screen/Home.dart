import 'package:flutter/material.dart';
import 'package:mobile_navigator/screen/About.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: RaisedButton(
           child: Text("Open route"),
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => SecondRoute()),
            );
           },
        ),
      ),
    );
  }
}