import 'package:flutter/material.dart';

class NewCommentEditText extends StatefulWidget {
  final String userId;

  const NewCommentEditText({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => NewCommentEditTextState();
}

class NewCommentEditTextState extends State<NewCommentEditText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CircleAvatar(
            backgroundImage:
                AssetImage("assets/images/user${widget.userId}.jpg"),
            radius: 20,
          ),
        ),
        Expanded(
            child: TextField(
                style: Theme.of(context).textTheme.bodySmall,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: 'Enter a search term',
                ))),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text("Post",
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: Colors.blueAccent.withOpacity(0.9))))
      ]),
    );
  }
}
