import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class Task1HomePage extends StatelessWidget {
  const Task1HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Главный экран', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed('/practise_task1/second_page'),
            child: const TextView(input: 'Перейти на Второй экран'),
          ),
        ),
      ),
    );
  }
}
