import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:coffe_shop_app/core/components/column/column.dart';
import 'package:coffe_shop_app/core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class OnboardingView extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: colorConstants.yellow,
      body: MyRow(
        child: MyColumn(
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        imageConstants.onboardingImg,
                        fit: BoxFit.cover,
                      ))),
              Expanded(flex: 3, child: Placeholder()),
              Expanded(flex: 1, child: Placeholder()),
              Expanded(flex: 1, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
