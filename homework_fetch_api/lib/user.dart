import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
   List users;
   Map datas;
   Future setUser() async{
    String url = "https://pixabay.com/api/?key=14001068-da63091f2a2cb98e1d7cc1d82&q=beautiful&image_type=photo&pretty=true";
    http.Response response = await http.get(url);
     datas = json.decode(response.body) ;
    setState(() {
     users  =datas ['hits'];
    });
  }
  @override
  void initState(){
    super.initState();
    setUser();
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("User Information"),
      ),
      body: ListView.builder(
        itemCount: users == null ? 0 : users.length,
        itemBuilder: (BuildContext contex, int i ){
          return Card(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              
                Row(
      
                  children: <Widget>[
                     CircleAvatar(
                    backgroundImage: NetworkImage(users[i]["userImageURL"]),
                ),
                SizedBox(width: 20.0,),
                Text("${users[i]["user"]}",
                style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),
                ),
                  ],
                ),
               Container(
                 margin: EdgeInsets.only(top: 20.0),
                 child:  Image.network(users[i]["largeImageURL"]),
               ),
              ],
              
            ),
       ), 
           
          );
        },
      ),
    );
  }
}
  