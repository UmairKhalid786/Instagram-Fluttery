import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/post_action_bar.dart';
import 'package:instagram_flutter/posts/post_header.dart';
import 'package:instagram_flutter/posts/post_image.dart';

class Post extends StatefulWidget {
  final String title;
  const Post({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => PostStates();
}

class PostStates extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          PostHeader(title: widget.title),
          PostImage(imageIndex: widget.title),
          PostActionsBar(title: widget.title),
        ]);
  }
}
