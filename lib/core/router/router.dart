
import 'package:flutter/material.dart';
import 'package:ruoter/view/home_page.dart';
import 'package:ruoter/view/info_page.dart';
import 'package:ruoter/view/profile_page.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;

  RouteGenerator._init();
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _navigator(const HomePage());
      case "info":
        return _navigator(const InfoPage());
      case "profile":
        return _navigator(const ProfilePage());
    }
    return null;
  }

  MaterialPageRoute _navigator(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
