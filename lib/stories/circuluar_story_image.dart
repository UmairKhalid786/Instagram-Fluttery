import 'package:flutter/material.dart';

class CircularStoryImage extends StatelessWidget {
  const CircularStoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"),
      radius: 100,
    );
  }
}
