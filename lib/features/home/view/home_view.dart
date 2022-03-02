import '../../../core/components/column/column.dart';
import '../../../core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';
import '../../../core/constants/color_constants.dart';
import '../../../models/coffee_model.dart';
import '../../widgets/list_view_builder/categories.dart';
import '../../widgets/list_view_builder/coffees.dart';
import '../../widgets/textfield/search_bar.dart';

part 'home_string_values.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget with BaseState {
  _HomeStringValues values = _HomeStringValues();
  Coffee? model;

  HomeView({Key? key}) : super(key: key);

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
                SizedBox(
                    height: context.dynamicHeight(.04),
                    child: titleText(context, values.morningText)),
                context.emptySizedHeightBoxLow,
                SizedBox(
                    height: context.dynamicHeight(.1),
                    child: CustomTextFieldSearch(text: values.searchLabel)),
                context.emptySizedHeightBoxLow,
                SizedBox(
                  height: context.dynamicHeight(.04),
                  child: titleText(context, values.categoriesText),
                ), // CATEGORIES TITLE SECTION
                context.emptySizedHeightBoxLow,
                SizedBox(
                    height: context.dynamicHeight(.07),
                    child: CatogoriesListViewBuilder()),
                context.emptySizedHeightBoxLow,
                SizedBox(
                    height: context.dynamicHeight(.4),
                    child: const CoffeesListViewBuilder()),
                context.emptySizedHeightBoxLow,
                SizedBox(
                    height: context.dynamicHeight(.04),
                    child: titleText(context, values.specialOfferText)),
                context.emptySizedHeightBoxLow,
                SizedBox(
                  height: context.dynamicHeight(.38),
                  child: const CoffeesListViewBuilder(direction: Axis.vertical),
                ),
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
      child: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/ic_1.png")),
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
