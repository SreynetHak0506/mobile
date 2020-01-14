import 'package:flutter/material.dart';

class Bacelona extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: Text("Bacelona"),
        actions: <Widget>[
             Image.network("http://pngimg.com/uploads/fcb_logo/fcb_logo_PNG18.png"),

        ],
      ),
      body: Image.network("https://cdn.britannica.com/34/212134-050-A7289400/Lionel-Messi-2018.jpg",
      fit:BoxFit.cover,
      height: double.infinity,
      ),
    );
  }
}