import 'package:coffe_shop_app/core/components/column/column.dart';
import 'package:coffe_shop_app/core/components/row/row.dart';
import 'package:coffe_shop_app/core/constants/bordor_constants.dart';
import 'package:coffe_shop_app/features/widgets/card/coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';
import '../../../core/constants/color_constants.dart';
import '../../../models/coffee_model.dart';
import '../../widgets/list_view_builder/categories.dart';
import '../../widgets/list_view_builder/coffees.dart';
import '../../widgets/textfield/search_bar.dart';

part 'home_string_values.dart';

class HomeView extends StatelessWidget with BaseState {
  _HomeStringValues values = _HomeStringValues();
  Coffee? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white54,
      appBar: buildAppBar(context),
      body: MyRow(
        child: MyColumn(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1, child: titleText(context, values.morningText)),
                Expanded(
                    flex: 1,
                    child: CustomTextFieldSearch(text: values.searchLabel)),
                Expanded(
                    flex: 1,
                    child: titleText(context,
                        values.categoriesText)), // CATEGORIES TITLE SECTION
                Expanded(flex: 1, child: CatogoriesListViewBuilder()),
                Expanded(flex: 5, child: CoffeesListViewBuilder()),
                Expanded(
                    flex: 1,
                    child: titleText(context, values.specialOfferText)),
                Expanded(
                    flex: 1,
                    child: CoffeesListViewBuilder(
                      direction: Axis.vertical,
                    )),
              ],
            ),
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

  Widget titleText(BuildContext context, String text) =>
      Text(text, style: context.textTheme.headline6);
}
