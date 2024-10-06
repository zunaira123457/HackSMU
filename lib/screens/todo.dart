import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final List<String> _todoItems = []; // List to hold the tasks
  final TextEditingController _textController =
      TextEditingController(); // Controller for text input

  // Function to add new task
  void _addTodoItem(String task) {
    setState(() {
      _todoItems.add(task);
    });
    _textController.clear(); // Clear the text field after adding the task
  }

  // Function to build the to-do item widget
  Widget _buildTodoItem(String todoText, int index) {
    return ListTile(
      title: Text(todoText),
      trailing: IconButton(
        icon: Icon(Icons.check, color: Colors.green),
        onPressed: () {
          setState(() {
            _todoItems.removeAt(index); // Remove task when checked off
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 235, 216),
        title: Text('To-Do List'),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 235, 216),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      labelText: 'Enter a task',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_textController.text.isNotEmpty) {
                      _addTodoItem(_textController.text);
                    }
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todoItems.length,
              itemBuilder: (context, index) {
                return _buildTodoItem(_todoItems[index], index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
