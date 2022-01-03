// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/widgets/navbar.dart';

class AppView extends StatefulWidget {
  final Widget child;
  AppView({required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/bg.png",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            NavBar(),
            widget.child,
          ],
        ),
      ),
    );
  }
}
