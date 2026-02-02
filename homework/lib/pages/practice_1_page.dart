import 'package:flutter/material.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({super.key});

  void showSnackBarMessage(String message, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Домашнее №1'), centerTitle: true),
      body: const SafeArea(
        child: Padding(
          padding: .all(15.0),
          child: Column(children: []),
        ),
      ),
    );
  }
}
