import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sakura/views/home_view_desktop.dart';
import 'package:sakura/views/home_view_mobile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewMobile(),
      desktop: HomeViewDesktop(),
    );
  }
}
