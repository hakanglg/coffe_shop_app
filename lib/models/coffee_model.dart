import 'package:coffe_shop_app/core/base/base_state.dart';
import 'package:coffe_shop_app/core/constants/image_constants.dart';

class Coffee with BaseState {
  final String title, description, image;
  final double price, star;

  Coffee(this.title, this.description, this.price, this.star, this.image);
}

List<Coffee> coffees = [
  Coffee("Cappuccino", "with chocolate", 5.12, 4.7,
      ImageConstants.instance.imgCappuccino),
  Coffee("Espresso", "with low fat milk", 4.32, 4.2,
      ImageConstants.instance.imgEspresso),
  Coffee("Turkish Coffee", "zero sugar", 10, 5,
      ImageConstants.instance.imgTurkish),
  Coffee("Greek Coffee", "with sugar", 5, 4, ImageConstants.instance.imgGreek),
  Coffee("Filter Coffee", "No milk", 6, 5, ImageConstants.instance.imgCoffe)
];
