import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Histórico e Estatísticas')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(child: ListTile(title: Text('Calendário de registros'), subtitle: Text('Visualização mensal e por lista'))),
          Card(child: ListTile(title: Text('Dias consecutivos'), trailing: Text('0'))),
          Card(child: ListTile(title: Text('Quantidade de registros'), trailing: Text('0'))),
          Card(child: ListTile(title: Text('Evolução emocional'), subtitle: Text('Gráfico simples por semana'))),
          Card(child: ListTile(title: Text('Hábitos mais cumpridos'), subtitle: Text('Leitura da Bíblia, Oração'))),
          Card(child: ListTile(title: Text('Índice de gratidão'), trailing: Text('0%'))),
          Card(child: ListTile(title: Text('Biblioteca de Aprendizados'), subtitle: Text('Versículos, lições e decisões importantes'))),
        ],
      ),
    );
  }
}
