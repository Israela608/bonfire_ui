import 'package:flutter/material.dart';

@immutable
class AppColor {
  AppColor._();

  // Shades
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const Color dark = Color(0xFF0F1115);
  static const Color card = Color(0xFF232A2E);

  // Text
  static const Color primaryText = Color(0xFFF5F5F5);
  static const Color secondaryText = Color(0xFFE5E5E5);
  static const Color text2 = Color(0xFFC4C4C4);
  static Color text3 = Color(0xFFCBC9FF).withOpacity(0.7);
  static Color text4 = Color(0xFFCCC8FF);

  // Primary
  static const Color primary = Color(0xFF8B88EF);
  static const Color primary2 = Color(0xFFB5B2FF);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.439594, 0.486002, 0.525199, 0.551425, 0.569469],
    colors: [
      Color.fromRGBO(15, 17, 21, 0), // #0F1115, 0%
      Color.fromRGBO(13, 14, 18, 0.28), // #0D0E12, 28%
      Color.fromRGBO(11, 12, 15, 0.64), // #0B0C0F, 64%
      Color.fromRGBO(9, 11, 13, 0.8), // #090B0D, 80%
      Color(0xFF000000), // black
    ],
  );
}
