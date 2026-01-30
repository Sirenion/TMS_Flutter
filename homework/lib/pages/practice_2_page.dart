import 'package:flutter/material.dart';
import 'package:homework/practice2/counter_model.dart';
import 'package:provider/provider.dart';

class Practice2Page extends StatelessWidget {
  const Practice2Page({super.key});

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }

    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(title: const Text('Практическое №2'), centerTitle: true),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  const Text('Provider Variant'),
                  Consumer<CounterModel>(
                    builder: (context, counter, child) {
                      return Text(counter.count.toString());
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterModel>().increment();
                    },
                    child: const Text('Increment'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterModel>().decrement();
                    },
                    child: const Text('Decrement'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterModel>().reset();
                      showSnackBarMessage('Provider data reset');
                    },
                    child: const Text('Reset'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
