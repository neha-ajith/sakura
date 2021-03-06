import 'package:flutter/material.dart';
import 'package:sakura/widgets/sidenote.dart';

class PostViewDesktop extends StatefulWidget {
  const PostViewDesktop({Key? key}) : super(key: key);

  @override
  _PostViewDesktopState createState() => _PostViewDesktopState();
}

class _PostViewDesktopState extends State<PostViewDesktop> {
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
                  Text(
                    "Heading 1",
                    style: TextStyle(fontSize: 50, fontFamily: "Heading"),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus .Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus .Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    style: TextStyle(fontSize: 20),
                  )
                  // PostSample(),
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
