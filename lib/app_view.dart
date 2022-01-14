// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/views/about_view.dart';
import 'package:sakura/views/home_view.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  List<Widget> views = [HomeView(), AboutView()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 100,
          backgroundColor: Colors.white.withOpacity(0.5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("sakura"),
              TextButton(
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: Text(
                  "about",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: views[_index]));
  }
}
