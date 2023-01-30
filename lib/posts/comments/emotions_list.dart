import 'package:flutter/material.dart';

import '../models/Emotion.dart';

class EmotionsList extends StatefulWidget {
  const EmotionsList({super.key});

  @override
  State<StatefulWidget> createState() => EmotionsListState();
}

class EmotionsListState extends State<EmotionsList> {
  List<Emotion> emotions = [
    Emotion("🤒"),
    Emotion("🤡"),
    Emotion("👹"),
    Emotion("🌹"),
    Emotion("🐗"),
    Emotion("😍"),
    Emotion("😤"),
    Emotion("🦆"),
    Emotion("🐹"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          itemCount: emotions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext ctx, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(emotions.elementAt(index).emotion, style: Theme.of(context).textTheme.labelLarge),
            );
          }),
    );
  }
}