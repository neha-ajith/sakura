import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sakura.",
      style:
          TextStyle(fontFamily: "Logo", fontSize: 70, color: Color(0xffFD9A90)),
    );
  }
}
