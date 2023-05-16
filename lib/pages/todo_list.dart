import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  TodoList({super.key});

  final names = ["Ana", "Juan", "Carlos"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do App"),
      ),
      /*body: ListView(
        children: const [
          ListTile(title: Text("List 1"), subtitle: Text("Detail list 1"),),
          ListTile(leading: Icon(Icons.anchor)),
          ListTile(title: Icon(Icons.battery_0_bar)),
          ListTile(trailing: Icon(Icons.battery_full)),
          ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/128727709?s=400&u=8fdd3a2adfe01e35d376966deafd4b769d155ee5&v=4"),))
        ],
      ),
      */
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(title: Text(names[index])),
          );
        },
      )
    );
  }
}