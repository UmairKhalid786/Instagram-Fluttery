import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/comments/comment_view.dart';

import '../models/Comment.dart';

List<Comment> comments = [
  Comment(userId: "1", commentDetail: "Random description for user 1"),
  Comment(userId: "2", commentDetail: "Random description hsa d hhasfd "),
  Comment(userId: "3", commentDetail: "Random description ajhsdgasjd gjashd"),
  Comment(userId: "4", commentDetail: "Random description asrimabsf oiasdy"),
  Comment(userId: "5", commentDetail: "Random description aksdu ashdgjh"),
  Comment(userId: "6", commentDetail: "Random description oaoisd gatdf"),
  Comment(userId: "7", commentDetail: "Random description asodoy aslkdjak"),
  Comment(userId: "8", commentDetail: "Random description askldjkjasdh hasyd"),
  Comment(userId: "9", commentDetail: "Random description aslkjdkjash ua7td"),
  Comment(userId: "10", commentDetail: "Random description alskdjk 0asyudt"),
];

class CommentDetailScreenContent extends StatefulWidget {
  final String userId;

  const CommentDetailScreenContent({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => CommentDetailScreenContentState();
}

class CommentDetailScreenContentState
    extends State<CommentDetailScreenContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: comments.length,
        itemBuilder: (BuildContext ctx, int index) {
          return CommentView(
            comment: comments.elementAt(index),
            isReplyEnabled: true,
          );
        });
  }
}
