import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text("Mobile Navigator"),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.red,),
              title: Text("Home"),
            ),

            ListTile(
              leading: Icon(Icons.group,color: Colors.green,),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => About()),
                  );
              },
            ),
          ],
        ),

      ),
    );
  }
}