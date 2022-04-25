import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todo.dart';

class AddTodo extends StatelessWidget {
  
  TextEditingController cTitle=TextEditingController();
  TextEditingController cDecricption=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final providerTodo = Provider.of<TodoModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Column(
        children: [
          TextField(controller: cTitle,
          decoration: InputDecoration(
            labelText: "Title" ),
          ),
          TextField(controller: cDecricption,
          decoration: InputDecoration(
            labelText: "Decription" ),
          ),
          ElevatedButton(onPressed: (){
          providerTodo.addTodo(Todo(cTitle.text, cDecricption.text));
          Navigator.pop(context);
          }, child: Text("Add"))
        ],
      ),
    );
  }
}