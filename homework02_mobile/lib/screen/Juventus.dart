import 'package:flutter/material.dart';

class Juventus extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Juventus"),
        actions: <Widget>[
             Image.network("https://www.fourjay.org/myphoto/f/46/464951_juventus-logo-png.png"),

        ],
      ),
      body: Image.network("https://cdn.calciomercato.com/images/2019-10/Ronaldo.Juve.2020.esulta.690x400.jpg",
      fit: BoxFit.cover,
      height:double.infinity,
      ),
    );
  }
}