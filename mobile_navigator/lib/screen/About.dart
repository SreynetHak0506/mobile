import 'package:flutter/material.dart';
import 'package:mobile_navigator/screen/Detail.dart';

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Second Route"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
            
            );
          },
          child: Text("detail"),
        ),
      ),
    );
  }
}