import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class HomeTaskMain extends StatelessWidget {
  const HomeTaskMain({super.key});

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
          child: Column(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/home_task1&2/about'),
                child: const TextView(input: 'О приложении'),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/home_task1&2/contacts'),
                child: const TextView(input: 'Контакты'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
