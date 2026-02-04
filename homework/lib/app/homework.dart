import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/practice2/counter_store.dart';
import 'package:homework/practice2/state/counter_state.dart';
import 'package:redux/redux.dart';

class Homework extends StatefulWidget {
  final GoRouter router;

  const Homework({required this.router, super.key});

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  final counterStore = Store<CounterState>(
    counterReducer,
    initialState: const CounterState(count: 0, history: []),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: counterStore,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'GoogleSans',
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: widget.router,
      ),
    );
  }
}
