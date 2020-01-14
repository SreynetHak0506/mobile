import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() =>runApp(Home());
 class Home extends StatefulWidget {
   
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int _increment = 0;
Color _color;
   void add(){
     setState(() {
        _increment++;
       switch(_increment){
         case 5:
         _color = Colors.green;
         break;
        case 10:
        _color = Colors.yellow;
        break;

        case 15:
        _color = Colors.red;
        break;
        case 20:
        _color = Colors.teal;
        break;
        case 21:
        _color = Colors.pink;
        break;
       }
     });
   }
  @override
  Widget build(BuildContext context) {
   
       return MaterialApp(
         debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text("Counter Apps"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("${_increment}" ,style: TextStyle(fontSize: 50.0,color: _color), ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _color,
        onPressed: (){add();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    )
    );
  }
}
   
 