import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../models/coffee_model.dart';

class CatogoriesListViewBuilder extends StatefulWidget with BaseState {
  @override
  State<CatogoriesListViewBuilder> createState() =>
      _CatogoriesListViewBuilderState();
}

class _CatogoriesListViewBuilderState extends State<CatogoriesListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: coffees.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: context.lowValue),
        child: Container(
          // height: contex
          width: context.dynamicWidth(0.46),
          decoration: ShapeDecoration(
              shape: widget.borderConstants.radiusAll,
              color: coffees[index].selected
                  ? widget.colorConstants.green
                  : widget.colorConstants.white),
          child: buildListTile(index, context),
        ),
      ),
    );
  }

  ListTile buildListTile(int index, BuildContext context) {
    return ListTile(
          onTap: () {
            coffees[index].selected = !coffees[index].selected;
            setState(() {});
          },
          selected: coffees[index].selected,
          selectedColor: widget.colorConstants.green,
          leading: leadingIconSection(index),
          title: titleTextSection(index, context),
        );
  }

  Icon leadingIconSection(int index) {
    return Icon(Icons.coffee_rounded,
              color: coffees[index].selected
                  ? widget.colorConstants.white
                  : widget.colorConstants.brown);
  }

  Text titleTextSection(int index, BuildContext context) {
    return Text(
            coffees[index].title,
            style: context.textTheme.bodyText1!.copyWith(
                fontWeight: coffees[index].selected
                    ? FontWeight.normal
                    : FontWeight.w700,
                color: coffees[index].selected
                    ? widget.colorConstants.white
                    : widget.colorConstants.brown),
            // textScaleFactor: .8,
          );
  }
}
