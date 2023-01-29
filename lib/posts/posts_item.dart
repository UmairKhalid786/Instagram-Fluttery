import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/post_action_bar.dart';
import 'package:instagram_flutter/posts/post_description.dart';
import 'package:instagram_flutter/posts/post_header.dart';
import 'package:instagram_flutter/posts/post_image.dart';
import 'package:instagram_flutter/posts/post_liked_stats_bar.dart';

import 'comments/comments.dart';

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
          const Divider(
            height: 1,
          ),
          PostHeader(title: widget.title),
          PostImage(imageIndex: widget.title),
          PostActionsBar(title: widget.title),
          PostLikedStatsBar(title: widget.title),
          PostDescription(
            description: "This is hardcoded description",
            user: widget.title,
          ),
          Comments(title: widget.title)
        ]);
  }
}
