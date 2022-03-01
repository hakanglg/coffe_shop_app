import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextFieldSearch extends StatelessWidget with BaseState {
  final String text;

  CustomTextFieldSearch({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: context.lowValue),
            child: CircleAvatar(
                child: Icon(
                  Icons.sort,
                  color: colorConstants.white,
                ),
                backgroundColor: colorConstants.yellow),
          ),
          hintText: text),
    );
  }
}
