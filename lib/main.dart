import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Runners Helper',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.red,
            brightness: Brightness.light,

            primary: Colors.blue)
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Runners helper"),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.calculate_outlined), text: "Split Calc",),
              Tab(icon: Icon(Icons.question_mark), text: "Unused",),
              Tab(icon: Icon(Icons.question_mark), text: "Unused",)
            ],),
          ),
          body: TabBarView(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://openclipart.org/image/400px/270138'),
                  fit: BoxFit.cover),
              ),
            ),Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://openclipart.org/image/400px/323666'),
                  fit: BoxFit.cover),
              ),
            ),Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://openclipart.org/image/400px/183633'),
                  fit: BoxFit.cover),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}