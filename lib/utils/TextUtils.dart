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
}
