import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class Colorization {
  //theme 1 colors
  static Color mainColor = const Color(0xff8764A7);
  static Color secondaryColor = const Color(0xffB94FDB);
  static Color textColor = Colors.white;
  static Color alternativeTextColor = Colors.black;
  static Color backgroundColor = Colors.white;
  //?other colors fot theme 1

  //theme 2 colors
  static Color t2MainColor = Colors.red;
  static Color t2SecondaryColor = Colors.orangeAccent;
  static Color t2TextColor = Colors.blue;
  static Color t2AlternativetextColor = const Color(0xff5C6980);
  static Color teBackgroundColor = Colors.black;

  static Color dynamicColor(context, Color mainTheme, Color darkTheme) {
    return ThemeProvider.controllerOf(context).currentThemeId == "main"
        ? mainTheme
        : darkTheme;
  }
}
