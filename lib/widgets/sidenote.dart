import 'package:flutter/material.dart';

class SideNote extends StatelessWidget {
  const SideNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Text(
            "Hello there, you beautiful human.",
            style: TextStyle(color: Color(0xffFF6363), fontSize: 25),
          ),
          Text(
            "Just pretend that I wrote something meaningful here...!",
            style: TextStyle(fontSize: 19),
          )
        ],
      ),
    );
  }
}
