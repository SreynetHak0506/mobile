import 'package:flutter/material.dart';
import 'package:project_mobile/todo.dart';


class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todos> todos = [];
  TextEditingController todoController = new TextEditingController();
    _toggleTodo(Todos todo, bool isChecked) {
        setState(() {
      todo.isDone = isChecked;
    });
   }
   
    Widget _buildItem(BuildContext context, int index) {
     final todo = todos[index];

    return CheckboxListTile(
      value: todo.isDone,
      title: Text(todo.title),
      onChanged: (bool isChecked) {
      _toggleTodo(todo, isChecked);
      },
     );
   }
// addTodo
_addTodo() async {
final todo = await showDialog<Todos>(
       context: context,
       builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
           title: Text('New todo'),
           content: TextField(
           controller: todoController,
           autofocus: true,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancel"),
               onPressed: () {
                  todoController.clear();
               Navigator.of(context).pop(); 
              },    
            ),
            FlatButton(
              child: Text("Add", style: TextStyle(color: Colors.blue),),
              onPressed: () {
              setState(() {
              final todo = new Todos(title: todoController.value.text);
              if(todoController.value.text==""){
                print("");
              }else{
                todos.add(todo);
              }
                  todoController.clear();
                  // todos.add(todo);
                  todoController.clear();
                  Navigator.of(context).pop();
                });
                // Navigator.of(context).pop(todo);
              },
            ),
          ],
        );    
       },
     );
      if(todo != null) {
       setState(() {
         todos.add(todo);
       });
     }
   } 
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemBuilder: _buildItem,
        itemCount: todos.length,
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: _addTodo,
       ),
    );
  }
}