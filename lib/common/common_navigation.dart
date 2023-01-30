import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class CommonNavigation extends StatelessWidget {
  final String title;

  const CommonNavigation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;
    TextStyle? headline = Theme.of(context).textTheme.headline6;

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: CommonShadow(Theme.of(context).colorScheme.primary),
      child: Row(
        children: [
          BackButton(color: onPrimary),
          Text(title, style: headline?.copyWith(color: onPrimary)),
          const Spacer(),
          IconButton(
              onPressed: () {
                Share.share('Comment');
              },
              icon: Icon(
                FontAwesomeIcons.shareFromSquare,
                color: onPrimary,
              ))
        ],
      ),
    );
  }
}

class CommonShadow extends BoxDecoration {
  CommonShadow(Color color)
      : super(boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0), // changes position of shadow
          )
        ]);
}
