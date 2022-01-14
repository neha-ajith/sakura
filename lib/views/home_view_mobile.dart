import 'package:flutter/material.dart';
import 'package:sakura/widgets/post_sample.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    PostSample(),
                    SizedBox(height: 15),
                    PostSample(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
