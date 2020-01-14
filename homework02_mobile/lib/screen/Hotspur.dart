import 'package:flutter/material.dart';

class Hotspur extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Hotspur"),
        actions: <Widget>[
             Image.network("https://seeklogo.net/wp-content/uploads/2014/10/tottenham-hotspur-fc-logo.png"),

        ],
      ),
      body: Image.network("https://www.heraldscotland.com/resources/images/10163823.jpg?display=1&htype=0&type=responsive-gallery",
      fit: BoxFit.cover,
      height: double.infinity,
      ),
    );
  }
}