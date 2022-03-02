import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SizeSelectButton extends StatelessWidget with BaseState{
  final String text;
  final Color bgColor;
  final Color textColor;

   SizeSelectButton({Key? key, required this.text, required this.bgColor, required this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: context.dynamicWidth(.3),
        decoration: ShapeDecoration(
            shape: borderConstants.radiusAllHeight,
            color: bgColor),
        child: Center(
            child: Text(
          text,
          style: context.textTheme.bodyText2!
              .copyWith(color: textColor),
        )),
      ),
    );
  }
}
