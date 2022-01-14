// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sakura/widgets/logo.dart';
import 'package:sakura/widgets/nav_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Logo(),
              Row(children: [
                NavItem(
                  "Home",
                ),
                NavItem(
                  "About",
                ),
              ]),
            ],
          ),
        ));
  }
}
