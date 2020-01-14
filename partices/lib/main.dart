import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Demo());
class Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Demostration"),
          leading: IconButton(
           onPressed: () {print("PNC Student Demo");},
           icon: Icon(Icons.menu, color: Colors.white ,),
          ),
          actions: <Widget>[
            Image.network("https://image.flaticon.com/icons/png/512/23/23656.png"),
          ],
        ),
        body: Container(
          child: Image.network("https://images.rapgenius.com/f359b6c2c00b7a4c368d661c0f2e1654.640x960x1.png",
           fit: BoxFit.cover,
           height: double.infinity,
           ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orange,
          child: Icon(Icons.favorite),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.yellow,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite),color: Colors.pink,),
                IconButton(onPressed: () {}, icon: Icon(Icons.group),color: Colors.red,),
                IconButton(onPressed: () {}, icon: Icon(Icons.message),color: Colors.purple,),
                IconButton(onPressed: () {}, icon: Icon(Icons.search),color: Colors.teal,),
              ],
              
              ) ,
          
          ),
          
          ),
      ) ,

    );
  }

} 