import 'package:coffe_shop_app/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class DetailView extends StatelessWidget {
  final Coffee coffee;

  const DetailView({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.title,
            style: context.textTheme.headline1!.copyWith(color: Colors.green)),
      ),
    );
  }
}
