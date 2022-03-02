import '../../../core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

// ignore: must_be_immutable
class CustomTextFieldSearch extends StatelessWidget with BaseState {
  final String text;

  CustomTextFieldSearch({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
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
