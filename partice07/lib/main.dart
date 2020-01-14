import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
 
void main() => runApp(Home());
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: DefaultTabController(
         length: 3,
         child: Scaffold(
         appBar:  AppBar(
           title: Text("Basic Mobile App"),
           actions: <Widget>[
             IconButton(icon: Icon(Icons.share,color: Colors.white,),)
           ],
           bottom: TabBar(
             tabs: <Widget>[
               Tab(icon: Icon(Icons.favorite),),
               Tab(icon: Icon(Icons.folder),),
               Tab(icon: Icon(Icons.thumb_up),),
             ],
           ),
         ),
         bottomNavigationBar: BottomAppBar(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               IconButton(icon: Icon(Icons.home,color: Colors.red,size:70.0,),),
               IconButton(icon: Icon(Icons.person,color: Colors.pink,),),
               IconButton(icon: Icon(Icons.phone,color: Colors.teal,),),
               IconButton(icon: Icon(Icons.message,color: Colors.green,),),
             ],
           ),
         ),
         floatingActionButton: SpeedDial(
           animatedIcon: AnimatedIcons.menu_close,
           overlayColor: Colors.cyan,
           overlayOpacity: 0.3,
           
           children: [
             SpeedDialChild(
              child: Icon(Icons.message),
              backgroundColor: Colors.red,
              label: 'Massage',
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.red),
              onTap: () => print('Massage')
            ),
            SpeedDialChild(
              child: Icon(Icons.share),
              backgroundColor: Colors.pink,
              label: 'Share',
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.pink),
              onTap: () => print('Share')
            ),
            SpeedDialChild(
              child: Icon(Icons.attach_file),
              backgroundColor: Colors.green,
              label: 'Attich_file',
              labelStyle: TextStyle(fontSize: 18.0, color: Colors.green),
              onTap: () => print('Attich_file')
            ),
            SpeedDialChild(
              child: Icon(Icons.favorite),
              backgroundColor: Colors.orange,
              label: 'Favorite',
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.orange),
              onTap: () => print("favorite")
            ),
            SpeedDialChild(
              child: Icon(Icons.person),
              backgroundColor: Colors.cyan,
              label: 'Person',
              labelStyle: TextStyle(fontSize: 18.0,color: Colors.cyan),
              onTap: () => print('person')
            ),
           ],
         ),
        drawer: Drawer(
          child:ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: NetworkImage("https://i.ytimg.com/vi/f7FZ016PpX0/maxresdefault.jpg"),
                  ) ,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              ListTile(
                title: Text("Facebook"),
                leading: Icon(Icons.face),

              ),
               ListTile(
                title: Text("Group"),
                leading: Icon(Icons.group),
              ),
            ],
          ) ,
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network("https://i.pinimg.com/originals/6d/cf/95/6dcf95bfa7198dace22ed16b7080066f.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            ),
             Image.network("http://www.area41.it/immagini/sfondi/sfondi_pc/grandi/animali/conigli/conigli%20(8).jpg",
             fit: BoxFit.cover,
             width: double.infinity,
             ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDI0xIKEEGR8c68lFoS__PHXAyiCcwVhac0MtjBA2cbqgQ8rwR",
              fit: BoxFit.cover,
             width: double.infinity,
              ),

          ],
        ),
       ),
       )
    );
  }
}