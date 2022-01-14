// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sakura/screens/app.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sakura",
      home: App(),
      theme: ThemeData(fontFamily: 'General'),
    );
  }
}
