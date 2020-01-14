import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homework(),
));

  class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.yellow[800]),
        title: Text(
          "Google Database",
          style: TextStyle(color: Colors.black, fontSize: 16.0),
    
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Image.network("https://miro.medium.com/max/3200/1*ipwpqQrHz0Lkd_5setXQCQ.jpeg"),

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
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQRwGOPCN3aCtoALdQkPSAaLK_5vMBOKYspc-2NGAOAXMuAg8K&s"),
                ),
              ),
             decoration:BoxDecoration(
              image: DecorationImage(
                image:NetworkImage("https://c8.alamy.com/comp/C0XK11/pink-garden-cosmos-cosmos-bipinnatus-in-a-field-of-mixed-flowers-germany-C0XK11.jpg"),
                fit:BoxFit.cover,
              ),
             ) ,
            ),
            ListTile(
              title: Text("08888 88 88"),
              leading: Icon(Icons.call),
              onLongPress: (){},
            ),

            ListTile(
              title: Text("bopha@gmail.com"),
              leading: Icon(Icons.email),
              onLongPress: (){},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        children: <Widget>[
          Container(
          child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiU2UwxtbIqGzGE8OfNK0rK4RmiSgH_8Y2yRVO-R8p0uA9RcIm&s",
          fit: BoxFit.cover,
          height: 340.0,
          ), 
          ),
           Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text("Our Wedding Days",style: TextStyle(fontSize: 16.0,color: Colors.black),),
                       Text("Enjoys good life",style: TextStyle(fontSize: 16.0,color: Colors.grey),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.favorite ,color: Colors.red,),
                      Text("Long Love"),
                    ],
                  ),
                ),
                  
                      Icon(Icons.favorite_border ,color: Colors.red,size: 20.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 30.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 40.0,),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKJKkenaLq5MpcRuCat4WHiIbX8oHotxCBXX4gZxfAlxsq6_Vg&s",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                  ),
                ),

                Container(
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3TiPQy_aNk0yzBkZOuCIKHeo7v8n-lQpJaozreFN1GeqtIwXX&s",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                  ),
                ),
              ],
            ),
          ),
         Container(
           margin: EdgeInsets.all(20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border ,color: Colors.red,size: 20.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 30.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 40.0,),
                    ],
                  ),
                ),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 40.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 30.0,),
                      Icon(Icons.favorite_border ,color: Colors.red,size: 20.0,),
             ],
           ),
         ),
         Container(
           child: Image.network("https://images.unsplash.com/photo-1557409835-0e90016730f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
         ),
        ],
      ),
    );
  }
}
