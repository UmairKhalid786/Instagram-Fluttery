import 'package:flutter/material.dart';

class CircularStoryImage extends StatelessWidget {
  final String image;
  const CircularStoryImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreen),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/user$image.jpg"),
          radius: 40,
        ));
  }
}
