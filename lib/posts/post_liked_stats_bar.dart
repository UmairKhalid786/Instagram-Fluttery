import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/TextUtils.dart';

class PostLikedStatsBar extends StatelessWidget {
  final String title;

  const PostLikedStatsBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: Row(
        children: generateLikedImages(["0", "1", "2"]),
      ),
    );
  }

  List<Widget> generateLikedImages(List<String> users) {
    List<Widget> widgets = [];
    for (var value in users) {
      widgets.add(CircleAvatar(
        backgroundImage: AssetImage("assets/images/user$value.jpg"),
        radius: 8,
      ));
    }

    widgets.add(Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: RichText(
          text: TextSpan(
              children: constructTextWithGivenUsers(["0", "1", "2"]),
              style: const TextStyle(color: Colors.black)),
        ),
      ),
    ));

    return widgets;
  }

  List<TextSpan> constructTextWithGivenUsers(List<String> users) {
    List<TextSpan> spans = [];
    switch (users.length) {
      case 0:
        spans.add(TextUtils.normalSpan("Be the first to like it :)"));
        break;
      case 1:
        spans.add(TextUtils.normalSpan("Liked by "));
        spans.add(TextUtils.boldTextSpan("User${users.first}"));
        break;
      case 2:
        spans.add(TextUtils.normalSpan("Liked by "));
        spans.add(TextUtils.boldTextSpan("User${users.first}"));
        spans.add(TextUtils.normalSpan(" and "));
        spans.add(TextUtils.boldTextSpan("User${users[1]}"));
        break;
      default:
        spans.add(TextUtils.normalSpan("Liked by "));
        spans.add(TextUtils.boldTextSpan("User${users.first}"));
        spans.add(TextUtils.normalSpan(" and "));
        spans.add(TextUtils.boldTextSpan("${users.length - 1} others"));
    }
    return spans;
  }
}
