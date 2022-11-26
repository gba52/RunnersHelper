import 'package:flutter/material.dart';

class UnusedPage extends StatefulWidget {
  const UnusedPage({super.key});

  @override
  State<UnusedPage> createState() => _UnusedPageState();
}

class _UnusedPageState extends State<UnusedPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: const Text("This page is currently unused"))
          ],
        )
    );
  }
}