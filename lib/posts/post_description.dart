import 'package:flutter/cupertino.dart';
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
            children: constructTextWithGivenUsers(
                "User $user", description, ["#HelloFlutter", "#FlutterSweden"]),
            style: const TextStyle(color: Colors.black)),
      ),
    );
  }

  List<TextSpan> constructTextWithGivenUsers(
      String user, String description, List<String> tags) {
    List<TextSpan> spans = [];
    spans.add(TextUtils.boldTextSpan("$user "));
    spans.add(TextUtils.normalSpan("$description "));
    for (var element in tags) {
      spans.add(TextUtils.coloredSpan("$element ", Colors.blueAccent));
    }
    return spans;
  }
}
