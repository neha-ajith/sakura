// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sakura/views/post_view_desktop.dart';
import 'package:sakura/views/post_view_mobile.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PostViewMobile(),
      desktop: PostViewDesktop(),
    );
  }
}
