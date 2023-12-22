import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  ///the mainFont Family as TextStyle
  static TextStyle get mainFont => GoogleFonts.inter();
  static ColorScheme get mainThemeColorScheme => const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff010101),
      onPrimary: Colors.white,
      secondary: Color(0xffD9D9D9),
      onSecondary: Colors.black,
      error: Color(0xffC1121F),
      onError: Colors.white,
      background: Colors.white,
      onBackground: Color(0xff010101),
      surface: Color(0xffD9D9D9),
      onSurface: Colors.black);
  static Color get succesColor => const Color(0xff008000);
  static Color get acceptColor => const Color(0xffADE8F4);
  static Color get shipmentColor => const Color(0xffEF6946);
  static Color get transferColor => const Color(0xffFAA307);
  static Color get refundColor => const Color(0xff6EDE8A);
  static Color get jobOrderColor => const Color(0xffA79EE0);
}
