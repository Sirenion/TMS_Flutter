import 'package:flutter/material.dart';

class TextView extends StatelessWidget {

  final String input;
  const TextView({
    super.key,
    required this.input
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: TextStyle(
          fontWeight: FontWeight.w500
      ),
    );
  }
}