
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MobileBtn());


class MobileBtn extends StatefulWidget {
  @override
  _MobileBtnState createState() => _MobileBtnState();
}

class _MobileBtnState extends State<MobileBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("floating Button"),
          actions: <Widget>[
            Image.network("https://lh3.googleusercontent.com/SjhsXq-pp-wkfWEdsRYIpUc3Syg3qNlE6F0lVfWzRwI_fr9WWzNfuYMjzbf0OXjC6rc"),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        //   backgroundColor: Colors.red,
        //  // mini: true,
        // //  shape: RoundedRectangleBorder(
        // //    borderRadius: BorderRadius.all(Radius.circular(15.0))
        // //  ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   icon: Icon(Icons.message),
        //   label:Text("Message") ,
        //   backgroundColor: Colors.orange,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(12.0))
        //   ),
        // ),
        // floatingActionButton: SpeedDial(
        //   backgroundColor: Colors.purple,
        //   animatedIcon: AnimatedIcons.menu_close,
        //   overlayColor: Colors.green,
        //   overlayOpacity: 0.4,
        //   children: [
        //     SpeedDialChild(
        //       child: Icon(Icons.message),
        //       backgroundColor: Colors.red,
        //       label: "Message",
        //       labelBackgroundColor: Colors.red,
        //       labelStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20.0,
        //       ),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.phone),
        //       backgroundColor: Colors.green,
        //       label: "Phone",
        //       labelBackgroundColor: Colors.pink,
        //       labelStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20.0,
        //       ),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.thumb_up),
        //       backgroundColor: Colors.teal,
        //       label: "Like",
        //       labelBackgroundColor: Colors.purple,
        //       labelStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20.0,
        //       ),
        //     ),
        //     SpeedDialChild(
        //       child: Icon(Icons.share),
        //       backgroundColor: Colors.pink,
        //       label: "Sharing",
        //       labelBackgroundColor: Colors.teal,
        //       labelStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20.0,
        //       ),
        //     ),
        //   ],
        // ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround ,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home,color: Colors.pink,),
                    Text("Home"),
                  ],
                ),
              ),

              MaterialButton(
                onPressed: () {},
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone,color: Colors.green,),
                    Text("Phone"),
                  ],
                ),
              ),

              MaterialButton(
                onPressed: () {},
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.message,color: Colors.cyan,),
                    Text("Message"),
                  ],
                ),
              ),

              MaterialButton(
                onPressed: () {},
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.group,color: Colors.red,),
                    Text("Group"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}