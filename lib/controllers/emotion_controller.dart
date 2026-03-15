import 'package:flutter/material.dart';

import '../models/emotional_log_model.dart';

class EmotionController extends ChangeNotifier {
  final List<EmotionalLogModel> _logs = [];

  List<EmotionalLogModel> get logs => List.unmodifiable(_logs);

  void addLog(EmotionalLogModel log) {
    _logs.add(log);
    notifyListeners();
  }
}
