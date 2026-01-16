import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/widgets/text_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Практическое и домашнее №12', textSize: 20.0),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () => context.go('/practice'),
                child: const TextView(input: 'Практическое'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () => context.go('/homework'),
                child: const TextView(input: 'Домашнее'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
