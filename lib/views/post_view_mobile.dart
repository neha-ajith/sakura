import 'package:flutter/material.dart';

class PostViewMobile extends StatefulWidget {
  const PostViewMobile({Key? key}) : super(key: key);

  @override
  _PostViewMobileState createState() => _PostViewMobileState();
}

class _PostViewMobileState extends State<PostViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    Text(
                      "Heading 1",
                      style: TextStyle(fontSize: 50, fontFamily: "Heading"),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus .Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec feugiat nisl pretium fusce id velit ut. Tempus iaculis urna id volutpat lacus laoreet. Nec ultrices dui sapien eget mi proin sed. Varius duis at consectetur lorem donec massa sapien faucibus et. Nunc mi ipsum faucibus .Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
                )),
          ),
        ),
      ],
    );
  }
}
