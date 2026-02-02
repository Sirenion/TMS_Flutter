import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homework extends StatelessWidget {
  final GoRouter router;

  const Homework({required this.router, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}
