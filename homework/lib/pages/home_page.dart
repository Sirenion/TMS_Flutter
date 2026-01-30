import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/app/navigation/routes/home_route.dart';

class HomePage extends StatelessWidget {
  final HomeRoute route;

  const HomePage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const Text('Занятие №16'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(route.practice1.routePath);
                    },
                    child: const Text('Практическое №1'),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(route.practice2.routePath);
                    },
                    child: const Text('Практическое №2'),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: () {
                    context.push(route.homework1.routePath);
                  }, child: const Text('Домашнее №1')),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: () {
                    context.push(route.homework2.routePath);
                  }, child: const Text('Домашнее №2')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
