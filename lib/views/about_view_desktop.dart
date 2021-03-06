import 'package:flutter/material.dart';
import 'package:sakura/widgets/sidenote.dart';

class AboutViewDesktop extends StatefulWidget {
  const AboutViewDesktop({Key? key}) : super(key: key);

  @override
  _AboutViewDesktopState createState() => _AboutViewDesktopState();
}

class _AboutViewDesktopState extends State<AboutViewDesktop> {
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
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "About",
                      style: TextStyle(fontFamily: 'Logo', fontSize: 70),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. ",
                      style: TextStyle(fontSize: 20),
                    )
                    // PostSample(),
                  ],
                ),
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
