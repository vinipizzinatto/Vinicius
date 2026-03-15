import 'package:flutter/material.dart';

class AppTheme {
  static const Color softBlue = Color(0xFFDDEAF7);
  static const Color olive = Color(0xFF8C9B6E);
  static const Color beige = Color(0xFFF5F0E6);

  static ThemeData light() {
    final base = ThemeData(useMaterial3: true, colorSchemeSeed: olive);
    return base.copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      cardTheme: const CardThemeData(
        color: beige,
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: softBlue.withOpacity(0.3),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(primary: olive),
    );
  }
}
