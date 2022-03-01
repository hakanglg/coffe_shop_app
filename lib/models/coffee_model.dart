import '../core/base/base_state.dart';
import '../core/constants/image_constants.dart';

class Coffee with BaseState {
  final String title, description, image;
  final double price, star;
  bool selected;

  Coffee(
      {required this.title,
      required this.description,
      required this.price,
      required this.star,
      required this.image,
      this.selected = false});
}

List<Coffee> coffees = [
  Coffee(
      title: "Cappuccino",
      description: "with chocolate",
      price: 5.12,
      star: 4.7,
      image: ImageConstants.instance.imgCappuccino,
      selected: true),
  Coffee(
      title: "Espresso",
      description: "with low fat milk",
      price: 4.32,
      star: 4.2,
      image: ImageConstants.instance.imgEspresso),
  Coffee(
      title: "Turkish Coffee",
      description: "zero sugar",
      price: 10,
      star: 5,
      image: ImageConstants.instance.imgTurkish),
  Coffee(
      title: "Greek Coffee",
      description: "with sugar",
      price: 5,
      star: 4,
      image: ImageConstants.instance.imgGreek),
  Coffee(
      title: "Filter Coffee",
      description: "No milk",
      price: 6,
      star: 5,
      image: ImageConstants.instance.imgCoffe)
];
