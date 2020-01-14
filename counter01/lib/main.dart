import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _increment = 0;
  Color _color;
  void add() {
    setState(() {
      _increment++;
      switch (_increment) {
        case 5:
          _color = Colors.green;
          break;
        case 10:
          _color = Colors.yellow;
          break;

        case 15:
          _color = Colors.red;
          break;
        case 20:
          _color = Colors.teal;
          break;
        case 21:
          _color = Colors.pink;
          break;
      }
    });
  }

  void adds() {
    setState(() {
      _increment--;
      switch (_increment) {
        case 5:
          _color = Colors.green;
          break;
        case 10:
          _color = Colors.yellow;
          break;

        case 15:
          _color = Colors.red;
          break;
        case 20:
          _color = Colors.teal;
          break;
        case 21:
          _color = Colors.pink;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          backgroundColor: _color,
          title: Text("Counter01"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: RaisedButton(
                    onPressed: () {
                      add();
                    },
                    color: Colors.teal,
                    child: Text("Increment"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: RaisedButton(
                    onPressed: () {
                      adds();
                    },
                    color: Colors.pink,
                    child: Text("Decrement"),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                "${_increment}",
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
