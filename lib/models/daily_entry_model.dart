class DailyEntryModel {
  DailyEntryModel({
    required this.date,
    this.mood,
    this.intention,
    this.whatHappened,
    this.challenge,
    this.lesson,
    this.gratitude = const [],
  });

  final DateTime date;
  final String? mood;
  final String? intention;
  final String? whatHappened;
  final String? challenge;
  final String? lesson;
  final List<String> gratitude;
}
