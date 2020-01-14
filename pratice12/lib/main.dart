import 'package:flutter/material.dart';

void main() => runApp(Home());
class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String last_name = "";
  String first_name = "";
  String info = "";

  void register(){
   setState(() {
        info = first_name + " and " +last_name;
        });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[400],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Text field"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding:EdgeInsets.all(30.0) ,
               child: TextField(
                 onChanged: (String text){
                   first_name = text;
                 },
               ),
            ),
            Container(
              padding:EdgeInsets.all(30.0) ,
               child: TextField(
                 onChanged: (String text){
                   last_name = text ;
                 },
               ),
            ),
            
            Container(
              width: 300.0,
              padding:EdgeInsets.only(bottom:30.0) ,
               child: RaisedButton(
                 onPressed: register,
                 child: Text("Register" ,style: TextStyle(color: Colors.white),),
                  color: Colors.teal,
               ),
            ),
            Text(info,style: TextStyle(fontSize: 30.0 ,color: Colors.green),),
          ]
        ),
      ),
    );
  }
}