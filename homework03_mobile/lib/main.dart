import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(Home());
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Basic Mobile Apps"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.group,color: Colors.white,),)
            ],
           bottom: TabBar(
             tabs: <Widget>[
               Tab(icon: Icon(Icons.favorite),),
               Tab(icon: Icon(Icons.share),),
               Tab(icon: Icon(Icons.group),),
               Tab(icon: Icon(Icons.search),),

             ],
           ),
          ),
          bottomNavigationBar: BottomAppBar(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home,color: Colors.green,size: 30.0,),),
                IconButton(icon: Icon(Icons.thumb_up,color: Colors.pink,size: 30.0,),),
                IconButton(icon: Icon(Icons.thumb_down,color: Colors.orange,size: 30.0,),),
                IconButton(icon: Icon(Icons.share,color: Colors.blue,size: 30.0,),),

              ],
            ) ,
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            overlayColor: Colors.cyan,
            overlayOpacity: 0.3,
            children: [
              SpeedDialChild(
                child: Icon(Icons.message),
                backgroundColor: Colors.orange,
                label: 'Message',
                labelBackgroundColor:Colors.orange ,
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                onTap: () => print('message')
              ),
              SpeedDialChild(
                child: Icon(Icons.share),
                backgroundColor: Colors.red,
                label: 'Sharing',
                labelBackgroundColor:Colors.red ,
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                onTap: () => print('Share')
              ),
              SpeedDialChild(
                child: Icon(Icons.attach_file),
                backgroundColor: Colors.green,
                label: 'Attach File',
                labelBackgroundColor:Colors.green ,
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                onTap: () => print('Attach_File'),
              ),
              SpeedDialChild(
                child: Icon(Icons.favorite),
                backgroundColor: Colors.blue,
                label: 'Love You',
                labelBackgroundColor:Colors.blue ,
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                onTap: () => 'favorite',
              ),
              SpeedDialChild(
                child: Icon(Icons.person),
                backgroundColor: Colors.pink,
                label: 'Friends',
                labelBackgroundColor:Colors.pink ,
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                onTap: () => 'person',
              ),
            ], 
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: NetworkImage("http://2.bp.blogspot.com/-vlHc4akvzgo/T-no5u-7aBI/AAAAAAAAEX0/dYrp-3aLa2Y/s640/Hdhut!Saimi+Khan+(1).jpg"),

                    ),
                  ),
                  decoration:BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text("Contact"),
                  leading: Icon(Icons.phone),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqvdHf4ML5lU_ld42ghZ0oLuS3_cyYG1JJY7WVmCI9y3kSiR3n6w&s",
              fit: BoxFit.cover,
              width: double.infinity,
              ),

              Image.network("https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
              width: double.infinity,
              ),

              Image.network("https://i0.wp.com/thewestsidestory.net/wp-content/uploads/2015/01/dogs.jpg?fit=1024%2C768&ssl=1",
              fit: BoxFit.cover,
              width: double.infinity,
              ),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROdlWHAE4S4xggZ31xklil49SKy90EcUVjPo_LkVBp2_BsTFw-&s",
              fit: BoxFit.cover,
              width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
