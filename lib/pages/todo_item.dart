import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  // Definimos el constructor con parametros
  const TodoItem({super.key, required this.title, required this.add});
  final String title;
  final void Function(String) add;

  @override
  Widget build(BuildContext context) {
    String newTask = "";
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text("hi"),
          TextField(
            controller: TextEditingController(text: newTask),
            onChanged: (value) {
              newTask = value;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'New task',
              hintText: 'Enter new task'
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add(newTask);
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
