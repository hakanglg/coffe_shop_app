import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_state.dart';
import '../../../core/constants/color_constants.dart';

part 'home_string_values.dart';

class HomeView extends StatelessWidget with BaseState {
  _HomeStringValues values = _HomeStringValues();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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
