import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/emotion_controller.dart';
import 'controllers/habit_controller.dart';
import 'controllers/journal_controller.dart';
import 'controllers/reflection_controller.dart';
import 'controllers/statistics_controller.dart';
import 'screens/home_shell_screen.dart';
import 'screens/login_screen.dart';
import 'services/auth_service.dart';
import 'theme.dart';

class DiarioVidaFeEvolucaoApp extends StatelessWidget {
  const DiarioVidaFeEvolucaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JournalController()),
        ChangeNotifierProvider(create: (_) => EmotionController()),
        ChangeNotifierProvider(create: (_) => HabitController()),
        ChangeNotifierProvider(create: (_) => ReflectionController()),
        ChangeNotifierProvider(create: (_) => StatisticsController()),
        Provider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diário de Vida, Fé e Evolução',
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.system,
        home: const AuthGate(),
      ),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthService>();
    return StreamBuilder<bool>(
      stream: auth.isSignedInStream,
      initialData: false,
      builder: (context, snapshot) {
        final signedIn = snapshot.data ?? false;
        return signedIn ? const HomeShellScreen() : const LoginScreen();
      },
    );
  }
}
