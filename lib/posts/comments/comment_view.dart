import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/models/Comment.dart';

import '../../utils/TextUtils.dart';

class CommentView extends StatelessWidget {
  final Comment comment;
  final bool isReplyEnabled;

  const CommentView(
      {super.key, required this.comment, required this.isReplyEnabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/user${comment.userId}.jpg"),
              radius: 16,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.clip,
                    text: TextSpan(
                        children: TextUtils.constructTextWithGivenUsers(
                            "User ${comment.userId}",
                            comment.commentDetail,
                            ["#HelloFlutter", "#FlutterSweden"]),
                        style: const TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(children: [
                    Text(
                      "25w",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(fontSize: 10),
                    ),
                    const SizedBox(width: 16),
                    if(isReplyEnabled)
                    Text(
                      "Reply",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(fontSize: 10),
                    ),
                  ],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
