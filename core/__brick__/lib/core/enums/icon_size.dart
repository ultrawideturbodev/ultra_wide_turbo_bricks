import 'package:{{packageName.snakeCase()}}/core/constants/k_sizes.dart';

typedef IconSizeDef = double Function(IconSize iconSize);

class IconSize {
  double get x0p75 => kSizesIconSize * 0.75;
  double get x1 => kSizesIconSize;
  double get x1p25 => kSizesIconSize * 1.25;
  static var defaultValue = () => kSizesIconSize;
}
