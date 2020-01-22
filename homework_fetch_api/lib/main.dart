import 'package:flutter/material.dart';
import 'package:homework_fetch_api/user.dart';

void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: User(),
    );
  }
}