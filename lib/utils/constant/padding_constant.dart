import 'package:flutter/widgets.dart';

class PaddingUtils {
  // Yalnızca yatay paddingim
  static EdgeInsets horizontal(double value) {
    return EdgeInsets.symmetric(horizontal: value);
  }

  // Yalnızca dikey paddingim
  static EdgeInsets vertical(double value) {
    return EdgeInsets.symmetric(vertical: value);
  }

  // Hem yatay hem de dikey paddingim
  static EdgeInsets all(double value) {
    return EdgeInsets.all(value);
  }

  // Üst, alt, sol ve sağ paddingim
  static EdgeInsets custom({double? left, double? top, double? right, double? bottom}) {
    return EdgeInsets.only(
      left: left ?? 0.0,
      top: top ?? 0.0,
      right: right ?? 0.0,
      bottom: bottom ?? 0.0,
    );
  }
}
