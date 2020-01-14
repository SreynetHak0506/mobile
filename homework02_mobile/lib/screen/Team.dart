import 'package:flutter/material.dart';
import 'package:homework02_mobile/screen/Bacelona.dart';
import 'package:homework02_mobile/screen/Juventus.dart';
import 'package:homework02_mobile/screen/Bayern.dart';
import 'package:homework02_mobile/screen/Hotspur.dart';
class Team extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Football Team"),
        centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Image.network("http://pngimg.com/uploads/fcb_logo/fcb_logo_PNG18.png"),
              title: Text("Bacelona"),
               onTap:() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Bacelona(),
                  ),
                );
                },
            ),
          ),
         Card(
            child: ListTile(
              leading: Image.network("https://www.fourjay.org/myphoto/f/46/464951_juventus-logo-png.png"),
              title: Text("Juventu"),
               onTap:() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Juventus(),
                  ),
                );
                },
            ),
          ),

          Card(
            child: ListTile(
              leading: Image.network("https://img.fcbayern.com/image/upload/f_auto,q_auto/t_productstage/eCommerce/produkte/23154/tortenaufleger-logo-fc-bayern.png"),
              title: Text("Bayern"),
               onTap:() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Bayern(),
                  ),
                );
                },
            ),
          ),

          Card(
            child: ListTile(
              leading: Image.network("https://seeklogo.net/wp-content/uploads/2014/10/tottenham-hotspur-fc-logo.png"),
              title: Text("Tottenham Hotspur"),
              onTap:() {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Hotspur(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}