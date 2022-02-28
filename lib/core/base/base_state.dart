import '../constants/bordor_constants.dart';

import '../constants/color_constants.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

abstract class BaseState {
  ColorConstants colorConstants = ColorConstants.instance;
  ImageConstants imageConstants = ImageConstants.instance;
  BorderConstants borderConstants = BorderConstants.instance;
  StringConstants stringConstants = StringConstants.instance;
}
