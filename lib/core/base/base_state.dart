import '../constants/color_constants.dart';
import '../constants/image_constants.dart';

abstract class BaseState {
  ColorConstants colorConstants = ColorConstants.instance;
  ImageConstants imageConstants = ImageConstants.instance;
}
