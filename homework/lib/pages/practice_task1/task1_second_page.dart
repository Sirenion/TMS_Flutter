import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class Task1SecondPage extends StatelessWidget {
  const Task1SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Второй экран', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/practise_task1/third_page'),
                child: const TextView(input: 'Перейти на Третий экран'),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const TextView(input: 'Назад'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
