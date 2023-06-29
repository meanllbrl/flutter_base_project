import 'package:flutter/material.dart';
import 'package:mean_base_project/extensions/context_extension.dart';
import 'package:mean_base_project/providers/state_provider.dart';
import 'package:mean_base_project/providers/theme_provider.dart';
import 'package:mean_base_project/views/weather_view.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Todo initialize classes and plugins
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: ((context) => StateProvider())),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomThemeProvider(
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: context.theme,
          title: "Your App",
          debugShowCheckedModeBanner: false,
          //?the initial route
          initialRoute: WeatherView.id,
          //?the possible routes
          routes: {WeatherView.id: (context) => const WeatherView()},
        );
      }),
    );
  }
}
