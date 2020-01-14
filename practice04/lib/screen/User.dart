import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Users"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.person),),
              Tab(icon: Icon(Icons.favorite),),
              Tab(icon: Icon(Icons.thumb_up),),
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            Image.asset("images/sreynet.jpg",
             fit: BoxFit.cover,
            ),
            Image.asset("images/rose.jpg",
             fit: BoxFit.cover,
            ),
            Image.asset("images/rabbit.jpg",
            fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}