import 'package:flutter/material.dart';

class ReflectionController extends ChangeNotifier {
  String weeklyReflection = '';

  void saveWeeklyReflection(String value) {
    weeklyReflection = value;
    notifyListeners();
  }
}
