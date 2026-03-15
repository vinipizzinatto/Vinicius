import 'package:flutter/material.dart';

import '../models/daily_entry_model.dart';

class JournalController extends ChangeNotifier {
  final List<DailyEntryModel> _entries = [];

  List<DailyEntryModel> get entries => List.unmodifiable(_entries);

  void addEntry(DailyEntryModel entry) {
    _entries.add(entry);
    notifyListeners();
  }
}
