import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthService>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Diário de Vida, Fé e Evolução', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 20),
                TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Email')),
                const SizedBox(height: 12),
                TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Senha')),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: () => auth.signInWithEmail(email: _emailController.text, password: _passwordController.text),
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: 8),
                OutlinedButton.icon(
                  onPressed: auth.signInWithGoogle,
                  icon: const Icon(Icons.login),
                  label: const Text('Entrar com Google'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
