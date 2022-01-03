// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sakura/app_view.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sakura",
      theme: ThemeData(fontFamily: "General"),
      builder: (_, child) => AppView(
        child: child!,
      ),
    );
  }
}
