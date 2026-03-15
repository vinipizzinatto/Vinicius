import 'package:flutter/material.dart';

class StatisticsController extends ChangeNotifier {
  int streak = 0;
  int totalEntries = 0;

  void registerEntry() {
    totalEntries += 1;
    streak += 1;
    notifyListeners();
  }
}
