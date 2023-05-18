import 'package:flutter/material.dart';
import 'package:todo/pages/todo_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final names = ["Ana", "Juan", "Carlos"];

  void add(String task) {
    setState(() {
      names.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do App"),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(
                names[index],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TodoItem(title: names[index], add: add,),
                    ));
              },
            ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                // remove const
                builder: (context) => TodoItem(title: "New task", add: add),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
