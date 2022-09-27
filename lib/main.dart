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
        body: const Center(
          child: Text('This will help you with all your running needs',
            style: TextStyle(fontSize: 24),) ,
        ),
      ),
    );
  }
}
