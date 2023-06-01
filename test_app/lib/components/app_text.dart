import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const AppText({super.key, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: textStyle,
      ),
    );
  }
}
