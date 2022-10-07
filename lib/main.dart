import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Runners Helper Application'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color:Colors.orange,
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment(0.0, 1.0),
              colors: [Colors.purple.shade50, Colors.purple.shade500] ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.zero
          )
        )
      ),
    );
  }
}


//const Color.fromARGB(1, 44, 56, 74)
//const Color.fromARGB(1, 245, 124, 1)