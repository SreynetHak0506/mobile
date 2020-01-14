import 'package:flutter/material.dart';
void main() => runApp(Home());

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.orange,
          title: Text("The World Of Girls"),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.search,color: Colors.white,),
            ),
          ],
        ),
        drawer:Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxvIbYuIJwBHORrwcFtQ93RoFum94p1z2BFjRv9DDYhc3voLY9&s"),
                  ),
                ),
                decoration:BoxDecoration(
                  color: Colors.pink[200],
                ),
              ),
              ListTile(
                title: Text("069617811"),
                leading: Icon(Icons.phone,color: Colors.green,),
                onLongPress: () {},
                trailing: Icon(Icons.person,color: Colors.blue,),
                 
              ),

              ListTile(
                title: Text("Message"),
                leading: Icon(Icons.message,color: Colors.orange,),
                onLongPress: () {},
                trailing: Icon(Icons.group,color:Colors.red,),
                 
              ),
            ],
          ),
        ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         backgroundColor: Colors.pink,

       ),
       floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
       body: ListView(
         children: <Widget>[
           Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGP9qQX_IHPKXRKiVYkcY1GZDj6k81DdQSIzMMidmwEJO7_SdJ&s",
           fit: BoxFit.cover,
           height:340.0,
           ),
           Container(
             padding: EdgeInsets.all(20.0),
             child: Row(
               children: <Widget>[
                 Expanded(
                   child: Column(
                     children: <Widget>[
                       Text("Google Firebase Firestore"),
                       Text("Google Free and nice design"),
                     ],
                   ),
                 ),
                 Icon(Icons.star,color: Colors.red,),
                 Text("100"),

               ],
             ),
           ),
           Container(
             padding: EdgeInsets.all(20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   width: 120.0,
                   height: 40.0,
                   child: RaisedButton(
                     onPressed: () {},
                     child: Icon(Icons.share),
                     color: Colors.red,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                     splashColor: Colors.green,
                   ),
                 ),

                 Container(
                    width: 120.0,
                   height: 40.0,
                   child: RaisedButton(
                     onPressed: () {},
                     child: Icon(Icons.group),
                     color: Colors.pink,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                     splashColor: Colors.cyan,
                   ),
                 ),

                 Container(
                   
                    width: 120.0,
                   height: 40.0,
                   child: RaisedButton(
                     onPressed: () {},
                     child: Icon(Icons.person),
                     color: Colors.green,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                     splashColor: Colors.orange,
                   ),
                 ),
               ],
             ),
           ),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEUCsxOHCpvhombLrGCPLx_ouieGdU1opX6RjCUrYqJZ5LeGaqYw&s",
                   fit: BoxFit.cover,
                   height: 200,
                   width: 200,
                   ),
                 ),Container(
                   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSeG_d3K_uKl0ifRRIUy59q5HeOQ686B2Vy2SU0Tu5HR2Ei5AN&s",
                   fit: BoxFit.cover,
                   height: 200,
                   width: 200,
                   ),
                 ),
               ],
             ),
           ),
         ],
         
       ),
      ),
    );
  }
}