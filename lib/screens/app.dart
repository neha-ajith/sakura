// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sakura/screens/home.dart';
import 'package:sakura/screens/about.dart';
import 'package:sakura/screens/post.dart';

int index = 0;

class App extends StatefulWidget {
  static _AppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AppState>();
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Widget> views = [Home(), About(), Post()];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
          key: _scaffoldKey,
          drawerEnableOpenDragGesture: false,
          drawer: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 10,
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
                ),
              ],
            ),
          ),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            toolbarHeight: 100,
            backgroundColor: Colors.white.withOpacity(0.5),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sakura.",
                  style: TextStyle(
                      fontFamily: 'Logo',
                      fontSize: 60,
                      color: Color(0xffFD9A90)),
                ),
                IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xffFF6363),
                  ),
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
                  child: views[index]))),
      desktop: Scaffold(
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
                      fontFamily: 'Logo',
                      fontSize: 70,
                      color: Color(0xffFD9A90)),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 1000), () {
                          setState(() {
                            index = 0;
                          });
                        });
                      },
                      child: Text(
                        "Home",
                        style:
                            TextStyle(color: Color(0xffFF6363), fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 1000), () {
                          setState(() {
                            index = 1;
                          });
                        });
                      },
                      child: Text(
                        "About",
                        style:
                            TextStyle(color: Color(0xffFF6363), fontSize: 20),
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
                  child: views[index]))),
    );
  }
}
