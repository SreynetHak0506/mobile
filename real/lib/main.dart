import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Real());
class Real extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('sreynet.hak',
          style: TextStyle(
            color: Colors.red,
          ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.red,),
          ),
          actions: <Widget>[
            Image.network("https://freeiconshop.com/wp-content/uploads/edd/android-flat.png"),
          ],

        ),
      ),

    );
  }

}
