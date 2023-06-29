import 'package:flutter/material.dart';
import 'package:mean_base_project/global_enums.dart';
import 'package:mean_base_project/preferences/colorization.dart';
import 'package:mean_base_project/preferences/typography.dart';
import 'package:theme_provider/theme_provider.dart';

class CustomThemeProvider extends StatelessWidget {
  final Widget child;

  // ignore: prefer_const_constructors_in_immutables
  CustomThemeProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

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
              //? THE TRANSITION ANIMATIONS, AND SO MUCH MORE CAN BE SET HERE
              textTheme: TextTheme(
                  bodyMedium:
                      omnes400.copyWith(color: Colorization.textColor))),
          description: "main colors",
        ),
        AppTheme(
          id: Themes.dark.name,
          data: ThemeData(
              textTheme: TextTheme(
                  bodyMedium:
                      omnes400.copyWith(color: Colorization.t2TextColor))),
          description: "secondary theme colors",
        ),
      ],
      child: ThemeConsumer(
        child: child,
      ),
    );
  }
}
