// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/views/about_view.dart';
import 'package:sakura/views/home_view.dart';
import 'package:sakura/views/post_view.dart';

int index = 0;

class AppView extends StatefulWidget {
  static _AppViewState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AppViewState>();
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  List<Widget> views = [HomeView(), AboutView(), PostView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 100,
          backgroundColor: Colors.white.withOpacity(0.5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sakura.",
                style: TextStyle(
                    fontFamily: 'Logo', fontSize: 70, color: Color(0xffFD9A90)),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(color: Color(0xffFF6363), fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text(
                      "About",
                      style: TextStyle(color: Color(0xffFF6363), fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: views[index])));
  }
}
