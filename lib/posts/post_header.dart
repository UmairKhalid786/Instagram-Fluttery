import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostHeader extends StatelessWidget {
  final String title;

  const PostHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user$title.jpg"),
              radius: 16,
            ),
          ),
          const Text("Post"),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              FontAwesomeIcons.ellipsis,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
