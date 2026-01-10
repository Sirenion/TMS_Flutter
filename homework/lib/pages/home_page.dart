import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbbdefb),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(child: Center()),
    );
  }
}
