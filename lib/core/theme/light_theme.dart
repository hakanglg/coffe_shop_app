import '../constants/bordor_constants.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: StringConstants.instance.FONT,
    scaffoldBackgroundColor: ColorConstants.instance.bgColor,
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    iconTheme: IconThemeData(color: ColorConstants.instance.green),
    textTheme: TextTheme(
        bodyText1: TextStyle(fontWeight: FontWeight.w700),
        headline4: TextStyle(
            color: ColorConstants.instance.black, fontWeight: FontWeight.w500),
        headline6: TextStyle(
            color: ColorConstants.instance.black, fontWeight: FontWeight.w700),
        caption: TextStyle(color: ColorConstants.instance.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorConstants.instance.white,
        selectedItemColor: ColorConstants.instance.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold)),
    inputDecorationTheme: InputDecorationTheme(
        border: BorderConstants.instance.radiusAllHeight,
        filled: true,
        fillColor: ColorConstants.instance.lightGrey,
        prefixIconColor: ColorConstants.instance.black,
        suffixIconColor: ColorConstants.instance.white,
        hintStyle: TextStyle(color: ColorConstants.instance.grey)));
