// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sakura/screens/app.dart';

class PostSample extends StatefulWidget {
  const PostSample({
    Key? key,
  }) : super(key: key);

  @override
  State<PostSample> createState() => _PostSampleState();
}

class _PostSampleState extends State<PostSample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Heading 1",
          style: TextStyle(fontSize: 50, fontFamily: "Heading"),
        ),
        Text(
          "27 September 2020",
          style: TextStyle(fontSize: 15),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus ....",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        TextButton(
            onPressed: () {
              Future.delayed(Duration(milliseconds: 500), () {
                App.of(context)?.setState(() {
                  index = 2;
                });
              });
            },
            child: Text(
              "Read more",
              style: TextStyle(
                  color: Color(
                    0xffFF6363,
                  ),
                  fontSize: 20),
            ))
      ],
    );
  }
}
