
  import 'package:flutter/material.dart';
  import 'dart:async';
  import 'dart:convert';
  import 'package:http/http.dart' as http;

  void main() => runApp(FaceBook());
  class FaceBook extends StatefulWidget {
    @override
    _FaceBookState createState() => _FaceBookState();
  }
  
  class _FaceBookState extends State<FaceBook> {
    Map users;
    List  userData;
    Future getUser() async{
      http.Response response = await http.get("https://reqres.in/api/users");
      users = json.decode(response.body);
      setState(() {
        userData = users['data'];
      });
      //debugPrint(userData.toString());
    }

    @override
  void initState() {
    super.initState();
    getUser();
  }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("FaceBook"),
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
            ),
            actions: <Widget>[
              Image.network("https://serasana.com/wp-content/uploads/2018/06/50-Best-Facebook-Logo-Icons-GIF-Transparent-PNG-Images-33.png"),
            ],
            
          ),
          body: ListView.builder(
            itemCount: userData == null ? 0 : userData.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                 child:Column(
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Image.network(userData[index]['avatar'],
                       fit: BoxFit.cover,
                       height: 400.0,
                       width: 400.0,
                         
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(userData[index]['avatar']),
                          ),
                          Text("${userData[index]['first_name']}, ${userData[index]['first_name']}",
                         style: TextStyle(
                         fontSize: 20.0,
                         color:Colors.cyan ,
                         fontWeight: FontWeight.w400,
                       ),
                       ),
                       IconButton(
                          icon: Icon(Icons.thumb_up,color: Colors.green,),
                          onPressed: () {},
                       ),

                       IconButton(
                          icon: Icon(Icons.thumb_down,color: Colors.blue,),
                          onPressed: () {},
                       ),

                       IconButton(
                          icon: Icon(Icons.share,color: Colors.cyan,),
                          onPressed: () {},
                       ),
                        ],
                       ),
                     ),
                   ],
                 ) ,
              );
            },
          ),
        ),
        
      );
    }
  }