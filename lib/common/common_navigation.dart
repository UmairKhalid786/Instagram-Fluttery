import 'package:flutter/material.dart';

class CommonNavigation extends StatelessWidget {
  final String title;

  const CommonNavigation({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;
    TextStyle? headline = Theme.of(context).textTheme.headline6;

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: CommonShadow(onPrimary),
      child: Row(
        children: [
          BackButton(color: onPrimary),
          Text(title, style: headline?.copyWith(color: onPrimary))
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
