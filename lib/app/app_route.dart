import 'package:flutter/material.dart';
import '../features/main_screen.dart';
import '../features/login_scsreen.dart';
import '../features/main_menue.dart';

class AppRoute {
  AppRoute._();
  static const String mainScreen = '/mainScreen';
  static const String loginScreen = '/LoginScreen';
  static const String mainMenue = '/MainMenue';

  static Map<String, WidgetBuilder> get routes => {
    mainScreen : (_) => const MainScreen(),
    loginScreen : (_) => const LoginScreen(),
    mainMenue : (_) => const MainMenue(),
  };
}
