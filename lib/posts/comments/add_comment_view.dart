import 'package:flutter/material.dart';

class AddCommentView extends StatelessWidget {
  final String userId;

  const AddCommentView({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Row(children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/user$userId.jpg"),
          radius: 8,
        ),
        const SizedBox(width: 8),
        Expanded(
            child: Text(
          "Add a comment",
          style: Theme.of(context).textTheme.caption,
        )),
        Text(
          "♥️",
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(width: 8),
        Text(
          "🤩",
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(width: 8),
        Text(
          "🙌",
          style: Theme.of(context).textTheme.caption,
        )
      ]),
    );
  }
}
