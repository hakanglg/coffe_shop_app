import 'package:coffe_shop_app/core/components/column/column.dart';
import 'package:coffe_shop_app/core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';
import '../../../core/constants/color_constants.dart';
import '../../../models/coffee_model.dart';

part 'home_string_values.dart';

class HomeView extends StatelessWidget with BaseState {
  _HomeStringValues values = _HomeStringValues();
  Coffee? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: MyRow(
        child: MyColumn(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  // MESSAGE TITLE SECTION
                  flex: 1,
                  child: Text(values.morningText,
                      style: context.textTheme.headline6)),
              Expanded(
                  // SEARCH BAR SECTION
                  flex: 1,
                  child: TextField(
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
                        hintText: values.searchLabel),
                  )),
              Expanded(
                  // CATEGORIES TITLE SECTION
                  flex: 1,
                  child: Text(values.categoriesText,
                      style: context.textTheme.headline6)),
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffees.length,
                    itemBuilder: (context, index) => Container(
                      // height: contex
                      width: context.dynamicWidth(0.45),
                      decoration: ShapeDecoration(
                          shape: borderConstants.radiusAll,
                          color: colorConstants.green),
                      child: ListTile(
                        selectedColor: colorConstants.green,
                        leading: Icon(
                          Icons.coffee_rounded,
                          color: ColorConstants.instance.white,
                        ),
                        title: Text(
                          coffees[index].title,
                          style: context.textTheme.bodyText1!
                              .copyWith(color: colorConstants.white),
                          // textScaleFactor: .8,
                        ),
                      ),
                    ),
                  )),
              Expanded(flex: 3, child: Placeholder()),
              Expanded(flex: 1, child: Placeholder()),
              Expanded(flex: 2, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: appBarLeadingSection(context),
      title: appBarTitleSection(context),
      actions: [appBarActionSection(context)],
    );
  }

  Padding appBarLeadingSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: context.lowValue),
      child:
          CircleAvatar(backgroundImage: AssetImage("assets/images/ic_1.png")),
    );
  }

  Wrap appBarTitleSection(BuildContext context) {
    return Wrap(
      children: [
        Icon(
          Icons.location_on,
          color: ColorConstants.instance.green,
        ),
        Text(
          values.locationText,
          style: context.textTheme.bodyText1!
              .copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Padding appBarActionSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: context.lowValue),
      child: Icon(
        Icons.notifications_active_outlined,
        color: ColorConstants.instance.brown,
      ),
    );
  }
}
