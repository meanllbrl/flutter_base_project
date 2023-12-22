import 'package:flutter/material.dart';
import 'package:mean_base_project/constants.dart';
import 'package:theme_provider/theme_provider.dart';
import '../global_enums.dart';

class CustomThemeProvider extends StatelessWidget {
  final Widget child;

  // ignore: prefer_const_constructors_in_immutables
  CustomThemeProvider({
    super.key,
    required this.child,
  });

  ///the mainFont Family as TextStyle
  TextStyle get mainFont => Constants.mainFont;
  ColorScheme get mainThemeColorScheme => Constants.mainThemeColorScheme;

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      onInitCallback: (controller, previouslySavedThemeFuture) async {
        String? savedTheme = await previouslySavedThemeFuture;
        if (savedTheme != null) {
          controller.setTheme(savedTheme);
        }
      },
      themes: [
        AppTheme(
          id: Themes.light.name,
          data: ThemeData(
              colorScheme: mainThemeColorScheme,
              scaffoldBackgroundColor: mainThemeColorScheme.background,
              //? THE TRANSITION ANIMATIONS, AND SO MUCH MORE CAN BE SET HERE
              textTheme: TextTheme(
                  titleMedium: mainFont.copyWith(
                      fontWeight: FontWeight.w700,
                      color: mainThemeColorScheme.onBackground,
                      fontSize: 14),
                  titleLarge: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground,
                      fontWeight: FontWeight.w500,fontSize: 30),
                   bodyLarge: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground,
                      fontWeight: FontWeight.w700),
                  bodyMedium: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground,
                      fontWeight: FontWeight.w400),
                  bodySmall: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground.withOpacity(0.6),
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                  labelLarge: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                  labelMedium: mainFont.copyWith(
                      color: mainThemeColorScheme.onBackground,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline))),
          description: "main colors",
        ),
        AppTheme(
          id: Themes.dark.name,
          data: ThemeData(),
          description: "secondary theme colors",
        ),
      ],
      child: ThemeConsumer(
        child: child,
      ),
    );
  }
}
