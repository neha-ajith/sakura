import 'package:flutter/material.dart';
import 'package:sakura/widgets/sidenote.dart';

class AboutViewMobile extends StatefulWidget {
  const AboutViewMobile({Key? key}) : super(key: key);

  @override
  _AboutViewMobileState createState() => _AboutViewMobileState();
}

class _AboutViewMobileState extends State<AboutViewMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "About",
              style: TextStyle(fontFamily: 'Logo', fontSize: 65),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. ",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
