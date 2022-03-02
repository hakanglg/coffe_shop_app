import 'package:flutter/material.dart';

import 'core/base/base_state.dart';
import 'core/theme/light_theme.dart';
import 'features/navigation/view/navigation_view.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget with BaseState {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        title: stringConstants.TITLE,
        home: NavigationView());
  }
}
