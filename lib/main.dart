import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: Row(
          children: [
            Image(image: AssetImage("images/dice1.png")),
            Image(image: AssetImage("images/dice1.png")),
          ],
        ),
      ),
    );
  }
}