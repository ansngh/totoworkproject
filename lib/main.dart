import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todo.dart';

import 'home_page.dart';

void main (){
  runApp(ChangeNotifierProvider(
    create: (context) => TodoModel(),
    child: MyApp()));

}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo",
      home: HomePage(),
      
    );
  }
}