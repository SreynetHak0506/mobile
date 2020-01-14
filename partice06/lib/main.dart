import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:partice06/screen/Home.dart';


void main() => runApp(MobileNav());
class MobileNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}