import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.orange,
    ),
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List todos = List.empty();

  @override

  void initState() {
    super.initState();
    todos.add("Item1");
    todos.add("Item2");

    todos.add("Item3");

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("MyTodos"),
      ),
      body:ListView.builder(itemCount :todos.length,
       itemBuilder:  (BuildContext context,int index) {
return Dismissible(key: Key(todos[index]), child: Card(
  child: ListTile(title:Text(todos[index])),
));
      }
    ));
  }
}