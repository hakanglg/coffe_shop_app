import 'package:flutter/material.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();

  BorderConstants._init();

  final radiusAll =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
  final radiusHeight =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

  final radiusAllHeight = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0), borderSide: BorderSide.none);
}
