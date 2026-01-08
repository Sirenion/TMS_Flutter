import 'package:flutter/material.dart';

class Stars extends StatelessWidget {

  final double amount;

  const Stars({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    int am = amount.round();
    List<Widget> rowList = .generate(am, (int index) => Icon(Icons.star, color: Colors.yellow, size: 15.0));

    return Row(
      mainAxisSize: .min,
      children: rowList
    );
  }
}
