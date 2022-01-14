// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sakura/views/about_view_desktop.dart';
import 'package:sakura/views/about_view_mobile.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewMobile(),
      desktop: AboutViewDesktop(),
    );
  }
}
