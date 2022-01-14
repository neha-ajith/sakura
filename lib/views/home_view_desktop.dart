// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/widgets/post_sample.dart';
import 'package:sakura/widgets/sidenote.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  _HomeViewDesktopState createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VerticalDivider(
              color: Color.fromARGB(255, 73, 69, 69),
              thickness: 0.5,
              endIndent: 50,
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
              endIndent: 50,
            ),
            SideNote()
          ],
        ),
      ),
    );
  }
}
