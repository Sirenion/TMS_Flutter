import 'package:flutter/material.dart';
import 'package:homework/textView.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _pushButton() {
    print("Кнопка добавить нажата");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextView(input: "Нажатий на кнопку: $_counter"),
        OutlinedButton(
            onPressed: _pushButton,
            child: TextView(input: "Нажми меня")
        )
      ],
    );
  }
}
