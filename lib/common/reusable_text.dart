import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  ReusableText({super.key, required this.text, required this.style});

  final String text;
  final TextStyle style;
  // final TextAlign textAlign;


  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
} 