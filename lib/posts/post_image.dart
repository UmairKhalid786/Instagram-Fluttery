import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String imageIndex;

  const PostImage({super.key, required this.imageIndex});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image(image: AssetImage("assets/images/post$imageIndex.jpg",), fit: BoxFit.fill,),
    );
  }
}
