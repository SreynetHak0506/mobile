
import 'package:flutter/material.dart';
class Group  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
   return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Group"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.search),),
              Tab(icon: Icon(Icons.favorite),),
              Tab(icon: Icon(Icons.book),),
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            Image.asset("images/rose01.jpg",
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