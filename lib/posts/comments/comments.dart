import 'package:flutter/material.dart';

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
  const Comments({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextButton(
          onPressed: () {},
          child: Text("View all ${comments.length} comments")),
    );
  }
}
