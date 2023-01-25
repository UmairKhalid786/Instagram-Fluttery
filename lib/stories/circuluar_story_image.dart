import 'package:flutter/material.dart';

class CircularStoryImage extends StatelessWidget {
  final String image;

  const CircularStoryImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreen),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user$image.jpg"),
              radius: 25,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Story $image", maxLines: 1, style: const TextStyle(fontSize: 12),),
        )
      ],
    );
  }
}
