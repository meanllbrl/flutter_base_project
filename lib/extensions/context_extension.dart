import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';
import '../helpers.dart';
import '../providers/state_provider.dart';

extension MeanShortCuts on BuildContext {
  BuildContext get context => this;

  //?returns size of the device
  Size get size => gs(context);

  //?sizing parameters
  static const double horizontalPaddingPixel = 28;
  static const double _verticalPaddingPixel = 30;
  static const double _horizotnalPaddingRatio = 0.05;

  //?returns height of the screen
  double get height => size.height;
  double get width => size.width;

  //?returns provider objects
  StateProvider get providerData =>
      Provider.of<StateProvider>(context, listen: false);

  //?returns valid padding by configuration folder
  EdgeInsets padding({bool onlyHorizontal = false}) {
    return EdgeInsets.symmetric(
        horizontal: _horizotnalPaddingRatio * size.width,
        vertical: onlyHorizontal ? 0 : _verticalPaddingPixel);
  }

  //?return main color with selected theme options
  ThemeData get theme {
    return ThemeProvider.themeOf(context).data;
  }

  bool get isKeyboardVisible {
    return WidgetsBinding.instance.window.viewInsets.bottom > 0.0;
  }

  void openKeyboard(FocusNode node) {
    Future.delayed(
        Duration.zero, () => FocusScope.of(context).requestFocus(node));
  }

  // String translate(String key) {
  //   return tryKey(context, key);
  // }
}
