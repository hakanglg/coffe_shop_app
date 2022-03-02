import '../../../core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

// ignore: must_be_immutable
class AddToCartButton extends StatelessWidget with BaseState {
  final String text;
  final String price;
  final Color bgColor;
  final Color textColor;

  AddToCartButton(
      {Key? key,
      required this.text,
      required this.price,
      required this.bgColor,
      required this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shape: borderConstants.radiusHeight,
        elevation: 15.0,
      ),
      onPressed: () {},
      child: ListTile(
        title: Text(
          text,
          style: context.textTheme.bodyText1!.copyWith(color: textColor),
        ),
        trailing: Text("\$${price.toString()}",
            style: context.textTheme.bodyText1!.copyWith(color: textColor)),
      ),
    );
  }
}
