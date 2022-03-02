import 'package:flutter/material.dart';

class StadiumButtonCustom extends StatelessWidget {
  final IconData icon;
  final String point;
  final Color iconColor;
  final Color bgColor;
  final Color textColor;

  const StadiumButtonCustom(
      {Key? key,
      this.textColor = Colors.white,
      this.icon = Icons.star,
      required this.point,
      this.iconColor = Colors.white,
      this.bgColor = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: bgColor,
        avatar: Icon(icon, color: iconColor),
        label: Text(
          point,
          style: TextStyle(color: textColor),
        ));
  }
}
