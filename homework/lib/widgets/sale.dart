

import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class SaleTuple extends StatelessWidget {
  const SaleTuple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
        color: Colors.orange,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
      child: TextView(
        input: "Акция",
        textSize: 12.0,
        textColor: Colors.white,
      ),
    );
  }
}
