import 'package:flutter/cupertino.dart';
import 'package:instagram_flutter/posts/posts_item.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<StatefulWidget> createState() => PostsStates();
}

class PostsStates extends State<Posts> {
  List<String> posts = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      /* Responsive max width added for larger
      *  screens when width goes above 600, it will center content
      * */
      width: 600,
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Post(
                title: index.toString(),
              );
            }),
      ),
    );
  }
}
