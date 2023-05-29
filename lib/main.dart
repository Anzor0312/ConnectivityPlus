import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:ruoter/core/router/router.dart';
import 'package:ruoter/core/theme/dark_mode.dart';
import 'package:ruoter/core/theme/light_mode.dart';
import 'package:ruoter/view/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ClickLightThemeMode.theme,
      dark: ClickDarkThemeMode.theme,
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) {
        return MaterialApp(
          theme: theme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
          onGenerateRoute: RouteGenerator.router.onGenerate,
          initialRoute: "/",
        );
      },
    );
  }
}
