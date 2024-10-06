import 'package:demoflutterapp/screens/todo.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 235, 216),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 235, 216),
      body: SingleChildScrollView(
        // Allows scrolling if the content overflows
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 230), // Space above the TextField
                Text(
                  "Enter Your Name",
                  style: TextStyle(
                    fontSize: 24, // Adjust font size for the title
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
                SizedBox(height: 16), // Space between title and TextField
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name', // Change label text
                    hintText: 'Type your name here',
                  ),
                ),
                SizedBox(height: 16), // Space between TextField and button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TodoListPage(),
                        ));
                    print("Button Pressed");
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
