import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class Task1ThirdPage extends StatelessWidget {
  const Task1ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Третий экран', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).popUntil(ModalRoute.withName('/practise_task1')),
                child: const TextView(input: 'Назад на Главный экран'),
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
