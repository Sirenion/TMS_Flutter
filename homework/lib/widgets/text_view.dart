import 'package:flutter/material.dart';

class TextView extends StatelessWidget {

  final String input;
  final bool bold;
  final double textSize;
  final Color textColor;

  const TextView({
    super.key,
    required this.input,
    this.textSize = 14.0,
    this.bold = false,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
        color: textColor,
      ),
    );
  }
}