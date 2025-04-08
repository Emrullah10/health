import 'package:flutter/material.dart';
import 'package:franco/franco.dart';
// FrancoColorExtension'ı import et

class ColorUtils {
  // Temel Mavi Renkler
  static Color baseBlue = Colors.blue;
  static Color lightBlue = Colors.lightBlue;
  static Color skyBlue = Colors.cyan;
  static Color deepBlue = Colors.blueAccent;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color grey = Colors.grey;
  // Farklı mavi tonları için renk manipülasyonları
  static Color lightenedBaseBlue(double amount) {
    return baseBlue.lighten(amount); // Mavi rengin açık tonunu döndürür
  }

  static Color darkenedBaseBlue(double amount) {
    return baseBlue.darken(amount); // Mavi rengin koyu tonunu döndürür
  }

  static Color lightenedLightBlue(double amount) {
    return lightBlue.lighten(amount); // Açık mavi rengin daha açık tonunu döndürür
  }

  static Color darkenedLightBlue(double amount) {
    return lightBlue.darken(amount); // Açık mavi rengin daha koyu tonunu döndürür
  }

  static Color withSaturationBaseBlue(double saturation) {
    return baseBlue.withSaturation(saturation); // Mavi rengin doygunluğunu ayarlar
  }

  static Color withLightnessBaseBlue(double lightness) {
    return baseBlue.withLightness(lightness); // Mavi rengin açıklığını ayarlar
  }

  // Diğer renk tonları
  static Color skyBlueWithBrightness(double brightness) {
    return skyBlue.withBrightness(brightness); // SkyBlue'nun parlaklık seviyesini ayarlar
  }

  static Color deepBlueWithSaturation(double saturation) {
    return deepBlue.withSaturation(saturation); // BlueAccent'in doygunluğunu ayarlar
  }
}
