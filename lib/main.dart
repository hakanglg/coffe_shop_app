import 'package:flutter/material.dart';

import 'core/base/base_state.dart';
import 'core/theme/light_theme.dart';
import 'features/home/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        title: stringConstants.TITLE,
        home: HomeView());
  }
}
