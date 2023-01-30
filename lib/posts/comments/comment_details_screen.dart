import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/comments/comment_view.dart';
import 'package:instagram_flutter/posts/models/Comment.dart';

import '../../common/common_navigation.dart';
import 'comment_details_content.dart';
import 'new_comment_edittext.dart';

class CommentDetailScreen extends StatefulWidget {
  final String userId;

  const CommentDetailScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => CommentDetailScreenState();
}

class CommentDetailScreenState extends State<CommentDetailScreen> {
  Comment description = Comment(userId: "0",
      commentDetail: "This is description of given posts, this is actual description not comment. What do you think of this ? is this comment or description ?");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const CommonNavigation(title: "Comments"),
              const SizedBox(height: 8),
              CommentView(comment: description, isReplyEnabled: false,),
              const Divider(height: 1),
              const Expanded(child: CommentDetailScreenContent(userId: "")),
              const NewCommentEditText(userId: "0")
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}