import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: StringConstants.instance.FONT,
    scaffoldBackgroundColor: ColorConstants.instance.white,
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    iconTheme: IconThemeData(color: ColorConstants.instance.green),
    textTheme: TextTheme(
        headline4: TextStyle(
            color: ColorConstants.instance.black, fontWeight: FontWeight.w500),
        caption: TextStyle(color: ColorConstants.instance.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorConstants.instance.white,
        selectedItemColor: ColorConstants.instance.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold)));
