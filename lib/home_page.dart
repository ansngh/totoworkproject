import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todo.dart';

import 'add_todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerTodo = Provider.of<TodoModel>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          providerTodo.clearTodo();
        }, icon: Icon(Icons.delete))],
        title: Text("Todolist_${providerTodo.todoItems.length}"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AddTodo()),
  );
        },
      ),
      body: ListView.builder(
        itemCount : providerTodo.todoItems.length,
        itemBuilder: (context, index){
          return ListTile(title: Text(providerTodo.todoItems[index].title),);
        }),
    );
  }
}