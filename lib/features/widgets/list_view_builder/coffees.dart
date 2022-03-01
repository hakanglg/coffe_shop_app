import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../models/coffee_model.dart';
import '../card/coffee_card.dart';

class CoffeesListViewBuilder extends StatelessWidget {
  final Axis direction;

  CoffeesListViewBuilder({Key? key, this.direction = Axis.horizontal})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: direction,
      itemCount: coffees.length,
      itemBuilder: (context, index) => CoffeeCard(
          image: coffees[index].image,
          title: coffees[index].title,
          description: coffees[index].description,
          price: coffees[index].price.toString()),
    );
  }
}
