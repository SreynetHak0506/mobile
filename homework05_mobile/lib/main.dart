import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          backgroundColor: Colors.white,
          title: Text("My love", 
          style: TextStyle(color: Colors.pink,
         fontFamily:"love",),
          ),
          actions: <Widget>[
            Image.asset("images/05.png",),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/01.jpg"),
                    radius: 70.0,
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/04.jpg"),
                  fit: BoxFit.cover
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Image.asset("images/02.jpg",
              fit: BoxFit.cover,
              width: 200,
              height: 200,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.favorite_border,size: 50.0,color: Colors.pink,),
                    
                  ),
                   Container(
                    child: Text("Smile for life",
                    
                    style: TextStyle(color:Colors.pink,fontSize: 30.0,
                    fontFamily:"love",
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
               children: <Widget>[
                 Container(
                   child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                 ),
               ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 50,
              height: 50,
              child: RaisedButton(
                onPressed: (){},
                color: Colors.pink,
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(50.0)),
                child: Text("Enjoy Our Love",
               style: TextStyle(color:Colors.white,fontSize: 30.0,fontFamily:"love" ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.only(top: 20.0) ,
              child: Image.asset("images/03.jpg"),
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Container(
                   child: Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.favorite_border,color: Colors.pink,),
                       ),
                       Container(
                         child: Text("Love"),
                       ),
                     ],
                   ),
                 ), Container(
                   child: Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.thumb_up,color: Colors.pink,),
                       ),
                       Container(
                         child: Text("Likes"),
                       ),
                     ],
                   ),
                 ),
                   Container(
                   child: Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.share,color: Colors.pink,),
                       ),
                       Container(
                         child: Text("Shares"),
                       ),
                     ],
                   ),
                 ),
                  Container(
                   child: Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.message,color: Colors.pink,),
                       ),
                       Container(
                         child: Text("Comment"),
                       ),
                     ],
                   ),
                 ),
                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(bottom: 100),
              child: Column(
               children: <Widget>[
                 Container(
                   child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
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