import 'package:coffe_shop_app/core/theme/light_theme.dart';
import 'package:coffe_shop_app/features/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme, title: 'Material App', home: OnboardingView());
  }
}
