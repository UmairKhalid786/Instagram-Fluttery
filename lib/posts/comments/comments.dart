import 'package:flutter/material.dart';
import 'package:instagram_flutter/posts/comments/comment_details_screen.dart';

List<String> comments = [
  "Hi",
  "How are you ?",
  "I am fine",
  "What are you doing ?",
  "Nice post",
  "I like your instagram posts",
  "You have nice profile pictures",
  "You like apples ?",
  "Keep posting pictures ?",
];

class Comments extends StatefulWidget {
  final String title;

  const Comments({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => CommentsState();
}

class CommentsState extends State<Comments> {
  bool allCommentsVisible = false;

  get callOnPress => null;

  void toggleCommentsVisibility() {
    setState(() {
      allCommentsVisible = !allCommentsVisible;
    });
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommentDetailScreen(userId: widget.title)));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToDetail(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text("View all ${comments.length} comments"),
      ),
    );
  }
}
