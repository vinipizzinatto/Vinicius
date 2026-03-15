import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateFormat('dd/MM/yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(title: const Text('Hoje')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Data: $date'),
          const SizedBox(height: 8),
          const Card(child: Padding(padding: EdgeInsets.all(12), child: Text('Versículo do dia: "Tudo posso naquele que me fortalece."'))),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Como estou me sentindo hoje?')),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children: const [
              Chip(label: Text('😌 tranquilo')),
              Chip(label: Text('😟 ansioso')),
              Chip(label: Text('😊 feliz')),
              Chip(label: Text('😰 preocupado')),
              Chip(label: Text('😴 cansado')),
              Chip(label: Text('🔥 motivado')),
            ],
          ),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Qual é minha intenção para hoje?')),
          const SizedBox(height: 16),
          FilledButton(onPressed: () {}, child: const Text('Registrar meu dia')),
          const SizedBox(height: 16),
          const Text('Progresso do dia'),
          const LinearProgressIndicator(value: 0.6),
          const SizedBox(height: 4),
          const Text('Espiritual 60% · Emocional 40% · Disciplina 70% · Gratidão 50%'),
        ],
      ),
    );
  }
}
