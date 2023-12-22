import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'extensions/context_extension.dart';
import 'package:provider/provider.dart';
import 'providers/state_provider.dart';
import 'providers/theme_provider.dart';
import 'views/weather_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Todo initialize classes and plugins
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => StateProvider())),
      ],
      child: EasyLocalization(
          supportedLocales: const [Locale('tr')],
          path: 'assets/translations',
          fallbackLocale: const Locale('tr'),
          child: const MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomThemeProvider(
      child: Builder(builder: (context) {
        return MaterialApp(
          builder: BotToastInit(),
          navigatorObservers: [BotToastNavigatorObserver()],
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
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
