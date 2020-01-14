import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
   return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Group"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.bookmark),),
              Tab(icon: Icon(Icons.favorite),),
              Tab(icon: Icon(Icons.book),),
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            Image.asset("images/rabbit01.jpg",
             fit: BoxFit.fill,
            ),
            Image.asset("images/rabbit02.jpg",
             fit: BoxFit.fill,
            ),
            Image.asset("images/rabbit03.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}