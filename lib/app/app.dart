import 'package:flutter/material.dart';
import '../../core/Theme/AppColors.dart';
import '../app/app_route.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.mainScreen,
      routes: AppRoute.routes,
      );
  }
}
