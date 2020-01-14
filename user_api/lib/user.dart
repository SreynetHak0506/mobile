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
    String url = "https://reqres.in/api/users";
    http.Response response = await http.get(url);
     datas = json.decode(response.body) ;
    setState(() {
     users  =datas ['data'];
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
      backgroundColor: Colors.purple,
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
            child: Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: NetworkImage(users[i]["avatar"]),
                ),
                SizedBox(width: 20.0,),
                Text("${users[i]["last_name"]}",
                style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),
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
  