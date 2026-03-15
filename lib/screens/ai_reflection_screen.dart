import 'package:flutter/material.dart';

class AiReflectionScreen extends StatelessWidget {
  const AiReflectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reflexão com IA (Conselheiro)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('Peça ajuda para interpretar emoções, resumir seu dia e receber perguntas profundas.'),
          SizedBox(height: 8),
          TextField(maxLines: 5, decoration: InputDecoration(labelText: 'Escreva aqui seu relato ou pergunta')),
          SizedBox(height: 8),
          FilledButton(onPressed: null, child: Text('Analisar com IA')),
          SizedBox(height: 12),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text('Resposta da IA aparecerá aqui: resumo, emoções percebidas, pergunta profunda e incentivo espiritual.'),
            ),
          ),
        ],
      ),
    );
  }
}
