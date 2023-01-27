import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostActionsBar extends StatelessWidget {
  final String title;

  const PostActionsBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(FontAwesomeIcons.heart, size: 24.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(FontAwesomeIcons.comment, size: 24.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(FontAwesomeIcons.shareFromSquare, size: 22.0),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(FontAwesomeIcons.bookmark, size: 22.0),
          )
        ],
      ),
    );
  }
}
