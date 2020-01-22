import 'package:flutter/material.dart';
import 'package:fetch_api/user.dart';

void main() => runApp(Homework());
class Homework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: User(),

    );
  }
}