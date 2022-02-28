import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';
import '../../../core/components/column/column.dart';
import '../../../core/components/row/row.dart';
import '../../home/view/home_view.dart';
import '../../widgets/button/default_button.dart';

part '../viewmodel/onboarding_viewmodel.dart';
part 'onboarding_string_values.dart';

// ignore: must_be_immutable
class OnboardingView extends StatelessWidget with BaseState {
  _OnboardingValues values = _OnboardingValues();
  _OnboardingViewModel model = _OnboardingViewModel();

  OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: colorConstants.yellow,
      body: MyRow(
        child: MyColumn(
          child: Column(
            children: [
              Expanded(flex: 5, child: imageSection()), // IMAGE
              Expanded(flex: 3, child: titleSection(context)), //TITLE
              Expanded(flex: 1, child: describeSection(context)), // DESCRIBTION
              Expanded(flex: 1, child: buttonSection(context)), // BUTTON
            ],
          ),
        ),
      ),
    );
  }

  SizedBox imageSection() {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          imageConstants.onboardingImg,
          fit: BoxFit.contain,
        ));
  }

  SizedBox titleSection(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.7),
      child: Text(values.title,
          textAlign: TextAlign.center, style: context.textTheme.headline4),
    );
  }

  SizedBox describeSection(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.8),
      child: Text(
        values.describtion,
        textAlign: TextAlign.center,
        style: context.textTheme.caption!.copyWith(color: colorConstants.black),
        textScaleFactor: 1.2,
      ),
    );
  }

  DefaultButton buttonSection(BuildContext context) {
    return DefaultButton(
      text: values.buttonText,
      function: () => model.goHome(context),
    );
  }
}
