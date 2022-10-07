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
          margin:EdgeInsets.all(50.0),
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color:Colors.orange,
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment(0.0, 1.0),
              colors: [Colors.purple.shade50, Colors.purple.shade500] ),
            image:DecorationImage(
              image:NetworkImage('https://openclipart.org/image/400px/270138'),
              fit:BoxFit.scaleDown,
            ),
            shape: BoxShape.circle
          )
        )
      ),
    );
  }
}


//const Color.fromARGB(1, 44, 56, 74)
//const Color.fromARGB(1, 245, 124, 1)