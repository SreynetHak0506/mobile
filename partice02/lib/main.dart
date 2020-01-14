import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Real Madrid'
        ),
        backgroundColor: Colors.red,
         leading: Icon(Icons.menu, color:Colors.white),
        actions: <Widget>[
           Image.network('https://cdn0.iconfinder.com/data/icons/material-circle-apps/512/icon-android-material-design-512.png',
        ],
        
      ),
    ),
  ),
);