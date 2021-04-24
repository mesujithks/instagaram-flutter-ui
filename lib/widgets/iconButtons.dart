import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final Icon icon;
  final Function action;

  IconButtons({this.icon, this.action});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: Colors.black,
      onPressed: action,
    );
  }
}
