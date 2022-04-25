import 'package:flutter/foundation.dart';

class Todo{
  final String title;
  final String description;

  Todo (this.title, this.description);
}

class TodoModel extends ChangeNotifier{
final List<Todo> _items  = [];
List<Todo> get todoItems => _items;
void addTodo(Todo n){
  _items.add(n);
  notifyListeners();// live add

}
void clearTodo(){
  _items.clear();
  notifyListeners();// live clear 
}
}

