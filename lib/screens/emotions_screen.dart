import 'package:flutter/material.dart';

import '../widgets/emotion_slider_tile.dart';

class EmotionsScreen extends StatelessWidget {
  const EmotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emoções e Protocolos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          EmotionSliderTile(label: 'Ansiedade'),
          EmotionSliderTile(label: 'Medo'),
          EmotionSliderTile(label: 'Culpa'),
          EmotionSliderTile(label: 'Raiva'),
          EmotionSliderTile(label: 'Tristeza'),
          EmotionSliderTile(label: 'Alegria'),
          EmotionSliderTile(label: 'Paz'),
          SizedBox(height: 8),
          TextField(maxLines: 3, decoration: InputDecoration(labelText: 'O que causou essas emoções hoje?')),
          SizedBox(height: 16),
          Text('Protocolo de Medo'),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Do que tive medo hoje?')),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Esse medo é real ou suposição?')),
          TextField(maxLines: 2, decoration: InputDecoration(labelText: 'Qual atitude corajosa posso tomar?')),
        ],
      ),
    );
  }
}
