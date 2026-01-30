import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homework/practice1/counter_bloc.dart';
import 'package:homework/practice1/counter_cubit.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({super.key});

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => CounterCubit()),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: const Text('Практическое №1'), centerTitle: true),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    crossAxisAlignment: .center,
                    children: [
                      Column(
                        children: [
                          const Text('Bloc Variant'),
                          BlocBuilder<CounterBloc, CounterState>(
                            builder: (context, state) {
                              return Text(state.count.toString());
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(IncrementCounterEvent());
                            },
                            child: const Text('Increment'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(DecrementCounterEvent());
                            },
                            child: const Text('Decrement'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(ResetCounterEvent());
                              showSnackBarMessage('Bloc data reset');
                            },
                            child: const Text('Reset'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Cubit Variant'),
                          BlocBuilder<CounterCubit, CounterCubitState>(
                            builder: (context, state) {
                              return Text(state.count.toString());
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterCubit>().increment();
                            },
                            child: const Text('Increment'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterCubit>().decrement();
                            },
                            child: const Text('Decrement'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<CounterCubit>().reset();
                              showSnackBarMessage('Cubit data reset');
                            },
                            child: const Text('Reset'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
