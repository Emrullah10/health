import 'package:flutter/material.dart';
import 'package:health/utils/constant/color.dart';

extension ThemeTextExtension on BuildContext {
  // Theme tabanlı text stilleri
  TextStyle get titleStyle =>
      Theme.of(this).textTheme.displayLarge?.copyWith(
        fontSize: 50,
        color: ColorUtils.black,
        fontWeight: FontWeight.bold,
      ) ??
      TextStyle(fontSize: 50, color: ColorUtils.black, fontWeight: FontWeight.bold);

  TextStyle get bodyStyle =>
      Theme.of(this).textTheme.bodyMedium?.copyWith(color: ColorUtils.black) ??
      TextStyle(fontSize: 16, color: ColorUtils.black);

  TextStyle get linkStyle =>
      Theme.of(this).textTheme.bodyMedium?.copyWith(color: Theme.of(this).canvasColor) ??
      TextStyle(fontSize: 16, color: ColorUtils.deepBlue);
}
