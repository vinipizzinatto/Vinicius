import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diário Espiritual')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TextField(decoration: InputDecoration(labelText: 'Livro')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: 'Capítulo')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: 'Versículos')),
          SizedBox(height: 8),
          TextField(maxLines: 4, decoration: InputDecoration(labelText: 'O que Deus falou comigo hoje?')),
          SizedBox(height: 8),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'O que aprendi com essa leitura?')),
          SizedBox(height: 8),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Existe algo que preciso mudar em minha vida?')),
          SizedBox(height: 8),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Como posso aplicar esse ensinamento hoje?')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: 'Versículo marcante do dia')),
          SizedBox(height: 8),
          TextField(maxLines: 3, decoration: InputDecoration(labelText: 'Minha oração')),
          SizedBox(height: 8),
          Text('Gratidão (3 itens)'),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '1')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '2')),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '3')),
          SizedBox(height: 8),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Pequenas vitórias do dia')),
          SizedBox(height: 8),
          TextField(maxLines: 4, decoration: InputDecoration(labelText: 'Registro do dia: o que aconteceu hoje? desafios? reações?')),
        ],
      ),
    );
  }
}
