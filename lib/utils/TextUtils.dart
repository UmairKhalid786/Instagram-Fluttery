import 'package:flutter/material.dart';

class TextUtils {
  static TextSpan boldTextSpan(String s) {
    return TextSpan(
        text: s, style: const TextStyle(fontWeight: FontWeight.bold));
  }

  static TextSpan normalSpan(String s) {
    return TextSpan(text: s);
  }

  static TextSpan coloredSpan(String s, Color color) {
    return TextSpan(text: s, style: TextStyle(color: color));
  }

  static List<TextSpan> constructTextWithGivenUsers(
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
