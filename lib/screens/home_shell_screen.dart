import 'package:flutter/material.dart';

import 'ai_reflection_screen.dart';
import 'diary_screen.dart';
import 'emotions_screen.dart';
import 'evolution_screen.dart';
import 'history_screen.dart';
import 'today_screen.dart';

class HomeShellScreen extends StatefulWidget {
  const HomeShellScreen({super.key});

  @override
  State<HomeShellScreen> createState() => _HomeShellScreenState();
}

class _HomeShellScreenState extends State<HomeShellScreen> {
  int _currentIndex = 0;

  final _screens = const [
    TodayScreen(),
    DiaryScreen(),
    EmotionsScreen(),
    EvolutionScreen(),
    HistoryScreen(),
    AiReflectionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (value) => setState(() => _currentIndex = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.today), label: 'Hoje'),
          NavigationDestination(icon: Icon(Icons.menu_book), label: 'Diário'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Emoções'),
          NavigationDestination(icon: Icon(Icons.trending_up), label: 'Evolução'),
          NavigationDestination(icon: Icon(Icons.history), label: 'Histórico'),
          NavigationDestination(icon: Icon(Icons.auto_awesome), label: 'IA'),
        ],
      ),
    );
  }
}
