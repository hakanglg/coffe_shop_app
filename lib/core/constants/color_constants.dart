import 'dart:ui';

class ColorConstants {
  static ColorConstants instance = ColorConstants._init();
  ColorConstants._init();

  final green = const Color(0xff00512d);
  final brown = const Color(0xff382e1e);
  final yellow = const Color(0xffcf9f69);
  final white = const Color(0xfffcfcfc);
  final black = const Color(0xff000000);
  final lightGrey = const Color(0xffEDEDED);
  final grey = const Color.fromARGB(78, 26, 25, 25);
  final bgColor = const Color.fromARGB(223, 250, 250, 250);
}
