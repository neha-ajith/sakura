// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NavItem extends StatefulWidget {
  final String item;
  NavItem(this.item);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          widget.item,
          style: TextStyle(fontSize: 20, color: Color(0xffFF6363)),
        ),
      ),
    );
  }
}
