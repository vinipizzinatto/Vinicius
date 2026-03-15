import 'package:flutter/material.dart';

class EvolutionScreen extends StatelessWidget {
  const EvolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Evolução')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Checklist de Hábitos'),
          CheckboxListTile(value: false, onChanged: null, title: Text('Leitura da Bíblia')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Oração')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Exercício físico')),
          SizedBox(height: 8),
          Text('Porcentagem concluída: 0%'),
          Divider(),
          Text('Decisões de Evolução'),
          TextField(decoration: InputDecoration(labelText: 'Área da vida')),
          TextField(decoration: InputDecoration(labelText: 'Problema identificado')),
          TextField(decoration: InputDecoration(labelText: 'Ação decidida')),
          TextField(decoration: InputDecoration(labelText: 'Primeiro passo')),
          TextField(decoration: InputDecoration(labelText: 'Data')),
          Divider(),
          Text('Radar de Consciência'),
          CheckboxListTile(value: false, onChanged: null, title: Text('Hoje agi com amor?')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Hoje fui disciplinado?')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Hoje fiz algo que me orgulha?')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Hoje agi de acordo com meus valores?')),
          CheckboxListTile(value: false, onChanged: null, title: Text('Hoje fui grato?')),
        ],
      ),
    );
  }
}
