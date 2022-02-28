import 'package:flutter/material.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();

  BorderConstants._init();

  final radiusAll =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
}
