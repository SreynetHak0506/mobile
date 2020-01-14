import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Hak sreynet "Web B "'),
          backgroundColor: Colors.pink[900],
           leading: IconButton(
           onPressed: () {print("PNC Student Demo");},
           icon: Icon(Icons.android, color: Colors.yellow ,),
          ),
          actions: <Widget>[
            Image.network("https://cdn0.iconfinder.com/data/icons/material-circle-apps/512/icon-android-material-design-512.png"),
          ],
        ),
        body: Center(
          child: Image (image:AssetImage('images/diamond.png')),
          ),
          bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.yellow,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite),color: Colors.pink,),
                IconButton(onPressed: () {}, icon: Icon(Icons.group),color: Colors.red,),
                IconButton(onPressed: () {}, icon: Icon(Icons.message),color: Colors.purple,),
                IconButton(onPressed: () {}, icon: Icon(Icons.search),color: Colors.teal,),
              ],
              
              ) ,
          
          ),
          
          ),
      ),
    ),
  );

