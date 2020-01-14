import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(Partice());
class Partice extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Create by sreynet.hak"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.red,),
          ),
          actions: <Widget>[
            Image.network('https://4.bp.blogspot.com/-D7nAxHMhhsg/XDcq77P_aKI/AAAAAAAAGtQ/ISpN7Kjo8fwAbY9uPidS2HRZjxOlR_3PACLcBGAs/s1600/logo%2Bandroid.png'),
          ],
          
        ),
        body: Container(
          child: Image.network("https://i.pinimg.com/736x/66/db/6a/66db6a44797f864aadea2bfe6ec46b2c--android-l-android-icons.jpg",
          fit: BoxFit.fill,
          width: double.infinity,
          ),

        ),
      ),
    );
  }

}