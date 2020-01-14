import 'package:flutter/material.dart';

void main() =>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Container weddingShop(String img1, String img2){
    return Container(
               margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsaPUNSfbhGXWpAuy-maBqNoVjfmYDbjI9N-pC_xGDwo-0tOj0&s",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                      ),
                    ),

                     Container(
                      child: Image.network("https://i.pinimg.com/236x/75/4e/2f/754e2f12e8b524bf8af18f44762a995f--cambodian-wedding-khmer-wedding.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                      ),
                    ),
                  ],
                ),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.pink,
          title: Text("My Lady Shop ",style:TextStyle(fontFamily:"Ladyshop" ),),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right:20.0),
              child:  Icon(Icons.shopping_cart),
            ),
             Container(
              margin: EdgeInsets.only(right:20.0),
              child:  Icon(Icons.share),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: NetworkImage("https://assets.atlasobscura.com/article_images/52211/image.jpg"),
                  ),
                ),
                 decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoopCobPmE8jIUZcQG9Tu9wTLHy-ye4-dZJJIO6rI57mwPoUvmaQ&s"),
                  )
                ),
              ),
              ListTile(
               leading: Icon(Icons.call,color: Colors.green,),
               title: Text("069617811"),
               subtitle: Text("Smart"),
                
              ),

               ListTile(
                leading: Icon(Icons.email,color: Colors.red,),
               title: Text("bopha@gmail.com"),
               subtitle: Text("Google"),
                
              ),
            ],
          ),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKVsOQ99tROPxlh0TuJp-EoTP1d6HGnFLJt41FVfvBJrdeZd3F&s",
                fit: BoxFit.cover,
                width: 200.0,
                height: 400.0,
                ),
              ),

              Container(
               margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOSjLM1gSUhB75n-1ORf-pf86NKqH9SpDE349xPDrzXX075Onv&s",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                      ),
                    ),

                     Container(
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOSjLM1gSUhB75n-1ORf-pf86NKqH9SpDE349xPDrzXX075Onv&s",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
            backgroundColor: Colors.teal,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      );
  }
}