import 'package:flutter/material.dart';

class EmotionSliderTile extends StatefulWidget {
  const EmotionSliderTile({super.key, required this.label});

  final String label;

  @override
  State<EmotionSliderTile> createState() => _EmotionSliderTileState();
}

class _EmotionSliderTileState extends State<EmotionSliderTile> {
  double value = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${widget.label}: ${value.toInt()}'),
        Slider(
          value: value,
          min: 1,
          max: 5,
          divisions: 4,
          label: value.toInt().toString(),
          onChanged: (newValue) => setState(() => value = newValue),
        ),
      ],
    );
  }
}
