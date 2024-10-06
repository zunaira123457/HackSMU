import 'package:demoflutterapp/screens/signin.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: Text('Task Trails'),
          backgroundColor: const Color.fromARGB(255, 149, 170, 149),
        ),
        backgroundColor: const Color.fromARGB(255, 149, 170, 149),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Title(
                    color: const Color.fromARGB(255, 149, 170, 149),
                    child: Text(
                      "Task Trails",
                      style: TextStyle(
                        fontSize: 35, // Adjust font size for the title
                        fontWeight: FontWeight.bold, // Make the text bold
                      ),
                    )),
                SizedBox(height: 100),
                //backgroundColor: const Color.fromARGB(255, 149, 170, 149),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signin(),
                        ));
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ]),
        ));
  }
}
