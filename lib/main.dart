import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Runners Helper',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("App bar runners helper"),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.account_balance), text: "Tab 1",),
              Tab(icon: Icon(Icons.add_alarm_outlined), text: "Tab 2",),
              Tab(icon: Icon(Icons.accessibility_outlined), text: "Tab 3",)
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