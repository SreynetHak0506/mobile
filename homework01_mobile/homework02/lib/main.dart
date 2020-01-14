import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(Homework01());
class Homework01 extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demostration"),
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,
             color: Colors.white,),
          ),
          actions: <Widget>[
            Image.network("https://www.passerellesnumeriques.org/wp-content/uploads/2016/03/pn-logo.png"),
          ],
        ),
      body: Container(
          child: Image.network("https://pbs.twimg.com/media/CyOxDIIUoAUve5P.jpg",
           fit:BoxFit.cover,
           width: double.infinity,
           height:double.infinity,
          ),  
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.favorite),
      ),
      bottomNavigationBar: BottomAppBar(
        child:  Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite), color: Colors.red,),
              IconButton(onPressed: () {}, icon: Icon(Icons.group), color: Colors.purple,),
               IconButton(onPressed: () {}, icon: Icon(Icons.message), color: Colors.green,),
                IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.blue,),
            ],
          ),
        ),

      ),
      ),
    );

  }
}