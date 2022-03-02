import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget with BaseState {
  final String text;
  final VoidCallback function;

  DefaultButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(.8),
      child: ElevatedButton(
        child: Text(text),
        onPressed: function,
        style: ElevatedButton.styleFrom(
            primary: colorConstants.green, shape: borderConstants.radiusAll),
      ),
    );
  }
}
