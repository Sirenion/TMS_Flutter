import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        leading: const Icon(Icons.arrow_back),
      ),
      body: const SafeArea(child: Center()),
    );
  }
}