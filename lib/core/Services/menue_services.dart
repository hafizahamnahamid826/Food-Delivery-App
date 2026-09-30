import 'dart:convert';
import 'package:flutter/services.dart';

class MenueServices {
  static Future<List<dynamic>> loadMenu() async {
    final jsonString = await rootBundle.loadString('assets/data/menue.json');
    final List<dynamic> menue = jsonDecode(jsonString);
    return menue;
  }
}
