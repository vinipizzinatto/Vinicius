class EmotionalLogModel {
  EmotionalLogModel({
    required this.date,
    required this.levels,
    this.trigger,
  });

  final DateTime date;
  final Map<String, int> levels;
  final String? trigger;
}
