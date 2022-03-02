import '../../../core/base/base_state.dart';
import '../../../core/components/column/column.dart';
import '../../widgets/button/size_select_button.dart';
import '../../../models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/button/stadium_button.dart';
import '../../widgets/button/add_to_cart_button.dart';

part "detail_string_values.dart";

// ignore: must_be_immutable
class DetailView extends StatelessWidget with BaseState {
  final Coffee coffee;
  _DetailStringValues values = _DetailStringValues();
  DetailView({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context),
        body: Container(
          decoration: BoxDecoration(color: colorConstants.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 6, child: buildHeader(context)),
              Expanded(flex: 5, child: buildBottom(context))
            ],
          ),
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: backButton(context),
      actions: [favButton(context)],
    );
  }

  IconButton backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      color: colorConstants.white,
      icon: const Icon(Icons.chevron_left_outlined),
    );
  }

  Padding favButton(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: FloatingActionButton.small(
        backgroundColor: colorConstants.white,
        onPressed: () {},
        child: Icon(
          Icons.favorite_border_outlined,
          color: colorConstants.brown,
        ),
      ),
    );
  }

  Stack buildHeader(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        buildImage(),
        buildTitle(context),
        buildDescription(context),
        buildPoint(),
      ],
    );
  }

  Padding buildBottom(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: Container(
          decoration: BoxDecoration(color: colorConstants.white),
          child: MyColumn(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                coffeeSizeTitleSection(context),
                context.emptySizedHeightBoxLow,
                selectSizeSection(context),
                context.emptySizedHeightBoxLow3x,
                aboutTitleSection(context),
                dummyTextSection(context),
                context.emptySizedHeightBoxLow3x,
                addToCartSection(context)
              ],
            ),
          )),
    );
  }

  SizedBox coffeeSizeTitleSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(.05),
        child: titleText(context, values.sizeText));
  }

  SizedBox selectSizeSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(.05),
        child: Row(
          children: [
            SizeSelectButton(
                text: values.small,
                bgColor: colorConstants.green,
                textColor: colorConstants.white),
            SizeSelectButton(
                text: values.medium,
                bgColor: colorConstants.white,
                textColor: colorConstants.black),
            SizeSelectButton(
                text: values.large,
                bgColor: colorConstants.white,
                textColor: colorConstants.black),
          ],
        ));
  }

  SizedBox aboutTitleSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(.05),
        child: titleText(context, values.aboutText));
  }

  SizedBox dummyTextSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(.1),
        child: Text(
          values.dummyText,
          maxLines: 3,
        ));
  }

  SizedBox addToCartSection(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(.08),
        child: AddToCartButton(
            text: values.addToCartText,
            price: coffee.price.toString(),
            bgColor: colorConstants.green,
            textColor: colorConstants.white));
  }

  Container buildImage() {
    return Container(
      decoration: ShapeDecoration(
          shape: borderConstants.radiusBottomLeft,
          image: DecorationImage(
              image: AssetImage(coffee.image), fit: BoxFit.cover)),
    );
  }

  Positioned buildTitle(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 20,
      child: Text(
        coffee.title,
        style:
            context.textTheme.headline4!.copyWith(color: colorConstants.white),
      ),
    );
  }

  Positioned buildPoint() {
    return Positioned(
        bottom: 15,
        right: 20,
        child: StadiumButtonCustom(
          iconColor: colorConstants.white,
          point: coffee.star.toString(),
          bgColor: colorConstants.yellow,
        ));
  }

  Positioned buildDescription(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 25,
      child: Text(
        coffee.description,
        style: context.textTheme.caption!.copyWith(color: colorConstants.white),
      ),
    );
  }

  Widget titleText(BuildContext context, String text) =>
      Text(text, style: context.textTheme.headline6);
}
