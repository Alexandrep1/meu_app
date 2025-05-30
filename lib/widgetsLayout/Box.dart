import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text;
  final Color backgroundcColor;
  const Box({super.key, required this.text, required this.backgroundcColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 140,
      alignment: Alignment.center,
      color: backgroundcColor,
      child: Text(text),
    );
  }
}