import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  Map<String, bool> values = {
          "Javasctrip" : false,
           "PHP" : false,
            "Java" : false,

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Check Box List"),
      ),
      body:ListView(
       children:values.keys.map((String key){
         return CheckboxListTile(
           title: Text(key),
            value: values[key],
            onChanged: (bool value){
                setState(() {
                  values[key] = value;
                });
            },
         );
       }).toList(),
      ),
    );
  }
}