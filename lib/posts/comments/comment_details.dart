import 'package:flutter/material.dart';

import '../../common/common_navigation.dart';

class CommentDetail extends StatefulWidget {
  final String userId;
  const CommentDetail({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => CommentDetailState();
}

class CommentDetailState extends State<CommentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              CommonNavigation(title: "Comments"),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}