import 'package:flutter/material.dart';

import '../utils/TextUtils.dart';

class PostDescription extends StatelessWidget {
  final String description;
  final String user;

  const PostDescription(
      {super.key, required this.description, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: RichText(
        text: TextSpan(
            children: TextUtils.constructTextWithGivenUsers(
                "User $user", description, ["#HelloFlutter", "#FlutterSweden"]),
            style: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
