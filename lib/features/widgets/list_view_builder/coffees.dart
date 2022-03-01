import 'package:flutter/material.dart';

import '../../../models/coffee_model.dart';
import '../card/coffee_card.dart';

class CoffeesListViewBuilder extends StatelessWidget {
  const CoffeesListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: coffees.length,
      itemBuilder: (context, index) => CoffeeCard(
          image: coffees[index].image,
          title: coffees[index].title,
          description: coffees[index].description,
          price: coffees[index].price.toString()),
    );
  }
}
