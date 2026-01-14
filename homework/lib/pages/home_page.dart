import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Практическое и домашнее №11', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const TextView(input: 'Практика', bold: true, textSize: 16.0),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/practise_task1'),
                child: const TextView(input: 'Задание 1'),
              ),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/practise_task2'),
                child: const TextView(input: 'Задание 2'),
              ),
              const SizedBox(height: 20.0),
              const TextView(input: 'Домашнее', bold: true, textSize: 16.0),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/home_task1&2'),
                child: const TextView(input: 'Задание 1 и 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
