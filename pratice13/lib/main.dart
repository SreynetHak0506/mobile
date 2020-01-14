import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ischeck = false;
  Image image;
  Color color;
  String url ="";
  String text ="";

  void change(bool val) {
    setState(() {
      ischeck = val;
      if (ischeck) {
        color = Colors.red;
        text = "check";
        url ="https://www.sanlucar.com/wp-content/uploads/2016/10/Ananas_.jpg";
      } else {
        color = Colors.cyan;
        text="Uncheck,";
         url="https://previews.123rf.com/images/atoss/atoss1803/atoss180300084/97666503-orange-fruits-with-leaf.jpg";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text("Check Box"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  onChanged:change,
                  value: ischeck,
                ),
                Text("Are you agree?"),
              ],
            ),
            Text(text,style: TextStyle(color: color),),
          ],
        ),
      ),
    );
  }
}
