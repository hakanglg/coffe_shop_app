import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:coffe_shop_app/core/components/column/column.dart';
import 'package:coffe_shop_app/core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../models/coffee_model.dart';

class CoffeeCard extends StatelessWidget with BaseState {
  final String image, title, description, price;
  final VoidCallback? func;

  CoffeeCard(
      {Key? key,
      this.func,
      required this.image,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: context.lowValue),
      child: InkWell(
        onTap: func,
        child: Container(
          height: context.dynamicHeight(.4),
          width: context.dynamicWidth(.45),
          decoration: ShapeDecoration(
              color: colorConstants.white, shape: borderConstants.radiusAll),
          child: MyRow(
            child: MyColumn(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 9, child: imageSection(context)),
                  Expanded(flex: 5, child: bottomSection(context))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox imageSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(1),
        width: context.dynamicWidth(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }

  Column bottomSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitleText(context),
        buildDescriptionText(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [buildPriceText(context), buildAddButton()],
        )
      ],
    );
  }

  Text buildTitleText(BuildContext context) =>
      Text(title, style: context.textTheme.bodyText1);

  Text buildDescriptionText(BuildContext context) {
    return Text(description,
        style: context.textTheme.subtitle2!.copyWith(color: Colors.grey));
  }

  Text buildPriceText(BuildContext context) {
    return Text(
      "\$${price.toString()}",
      style: context.textTheme.bodyText1,
      textScaleFactor: 1.2,
    );
  }

  CircleAvatar buildAddButton() {
    return CircleAvatar(
      backgroundColor: colorConstants.green,
      child: Icon(
        Icons.add,
        color: colorConstants.white,
      ),
    );
  }
}
