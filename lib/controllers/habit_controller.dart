import 'package:flutter/material.dart';

import '../models/habit_model.dart';

class HabitController extends ChangeNotifier {
  final List<HabitModel> _habits = [
    HabitModel(name: 'Leitura da Bíblia'),
    HabitModel(name: 'Oração'),
    HabitModel(name: 'Exercício físico'),
    HabitModel(name: 'Tempo com família'),
  ];

  List<HabitModel> get habits => List.unmodifiable(_habits);

  void addHabit(String name) {
    _habits.add(HabitModel(name: name));
    notifyListeners();
  }

  void toggle(int index, bool? value) {
    _habits[index].completed = value ?? false;
    notifyListeners();
  }

  double get completionRate {
    if (_habits.isEmpty) return 0;
    final done = _habits.where((h) => h.completed).length;
    return done / _habits.length;
  }
}
