import 'package:flutter/material.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();

  BorderConstants._init();

  final radiusAll =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
  final radiusTop = const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(30), topEnd: Radius.circular(30)));
  final radiusBottomLeft = const RoundedRectangleBorder(
      borderRadius:
          BorderRadiusDirectional.only(bottomStart: Radius.circular(30)));
  final radiusHeight =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

  final radiusAllHeight = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0), borderSide: BorderSide.none);
}
