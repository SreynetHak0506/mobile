import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  Image _image ; 
  void add(){
    setState(() {
     _counter++; 
    switch(_counter){
      case 5:
       _image =Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWdJIGAkH_b-5cSaEJkAYQqIStdRKG0LU1zcm6QElqNEAvwmQF&s");
      break;
      case 6:
       _image =Image.network("https://steemitimages.com/DQmdnnowxwmFwCKNq3HASiW9vYTLWCMpPzkD4W9jPNENcLZ/%E0%A7%8D%E0%A6%BF%E0%A6%95.jpg");
      break;

      case 7:
       _image =Image.network("https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F190701154053-rabbit-stock.jpg");
      break;

      case 8:
       _image =Image.network("https://www.onhold.on.ca/wordpress/wp-content/uploads/2017/04/rabbitdiettile.jpg");
      break;

      case 9:
       _image =Image.network("https://greengarageblog.org/wp-content/uploads/2019/11/pros-and-cons-of-rabbits-as-pets.jpg");
      break;

      case 10:
       _image =Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdkvKDTO8S4igspJC6EtoZ6NPniJrBo-xqVDuUe7vYmXFdURfF_A&s");
      break;
      
     }
    });
   }

   void remove(){
    setState(() {
     _counter--; 
      switch(_counter){
      case 5:
       _image =Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWdJIGAkH_b-5cSaEJkAYQqIStdRKG0LU1zcm6QElqNEAvwmQF&s");
      break;
      case 6:
       _image =Image.network("https://steemitimages.com/DQmdnnowxwmFwCKNq3HASiW9vYTLWCMpPzkD4W9jPNENcLZ/%E0%A7%8D%E0%A6%BF%E0%A6%95.jpg");
      break;

      case 7:
       _image =Image.network("https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F190701154053-rabbit-stock.jpg");
      break;

      case 8:
       _image =Image.network("https://www.onhold.on.ca/wordpress/wp-content/uploads/2017/04/rabbitdiettile.jpg");
      break;

      case 9:
       _image =Image.network("https://greengarageblog.org/wp-content/uploads/2019/11/pros-and-cons-of-rabbits-as-pets.jpg");
      break;

      case 10:
       _image =Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdkvKDTO8S4igspJC6EtoZ6NPniJrBo-xqVDuUe7vYmXFdURfF_A&s");
      break;
      
     }
    });
   }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: _image,
             ),
             Text("$_counter",style: TextStyle(fontSize: 50.0)),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               FloatingActionButton(
                 backgroundColor: Colors.green,
                 onPressed: () {add();},
                 child: Icon(Icons.add ),
               ),
              SizedBox(width: 40.0),
               FloatingActionButton(
                 backgroundColor: Colors.red,
                 onPressed: () {remove();},
                 child: Icon(Icons.remove),
               ),
              ],
             ),
             
           ],
         ),
    );
  }
}