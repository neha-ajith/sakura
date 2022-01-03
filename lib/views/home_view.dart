// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/widgets/post_sample.dart';
import 'package:sakura/widgets/sidenote.dart';

double opacityHome = 1;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      opacity: opacityHome,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalDivider(
                  color: Color.fromARGB(255, 73, 69, 69),
                  thickness: 0.5,
                ),
                SizedBox(
                  width: 1000,
                  child: Column(
                    children: [
                      PostSample(),
                      SizedBox(height: 15),
                      PostSample(),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Color.fromARGB(255, 73, 69, 69),
                  thickness: 0.5,
                ),
                SideNote()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
