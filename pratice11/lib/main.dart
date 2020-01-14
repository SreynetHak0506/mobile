import 'package:flutter/material.dart';
import 'package:pratice11/counter.dart';
void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         title: Text("Counter App"),
       ),
       body:Counter(),
     ),
   );
  }
}