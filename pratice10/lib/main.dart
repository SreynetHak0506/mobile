import 'package:flutter/material.dart';

void main() => runApp(Home());
class Home  extends StatelessWidget {
  int counter;
  Home (){
    this.counter =0;
  }
  void increment(){
    this.counter++;
    print(this.counter);

  }
  void dicrement(){
    this.counter--;
    print(this.counter);
  }
  void tell(){
    print("review profile");
    
  }
  
  void log(String event){
   print("press button" + event);
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.teal,
          title: Text("Counter App"),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              onPressed: () {tell();},
              child: Icon(
                Icons.person,
                color:Colors.white,
              ),
            ),
          ],
        ),
       body: Container(
         margin: EdgeInsets.only(top:50),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
            Container(
              child: RaisedButton(
                onPressed: (){
                  increment();
                  log("increament");
                  },
                child: Text("Increment"),
                color: Colors.pink[800],
              ),
            ),
             Container(
              child: RaisedButton(
                onPressed: (){
                  dicrement();
                   log("dicreament");
                  },
                child: Text("dicrement"),
                color: Colors.green[800],
              ),
            ),
           ],
         ),
      ),
    ),
    );
  }
}