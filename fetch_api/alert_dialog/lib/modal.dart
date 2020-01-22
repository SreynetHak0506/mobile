import 'package:flutter/material.dart';
class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
 TextEditingController todoControler = TextEditingController();
  createAlert(BuildContext context){
    return showDialog(
        context: context,
        builder:(context){
          return AlertDialog(
            title: Text("Alert Dialog",
            ),
            content: TextField(
              controller: todoControler,
              decoration: InputDecoration(
                hintText: 'Add something....',
              ),
            ),
           shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
            actions: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pop(todoControler.text.toString());
                  debugPrint(todoControler.text.toString());
                },
                child: Text("Add New",style: TextStyle(color: Colors.cyan),
                ),
              )
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){createAlert(context);},
       child: Icon(Icons.add),
     ),
    );
  }
}