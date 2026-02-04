import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:homework/practice2/actions/counter_actions.dart';
import 'package:homework/practice2/state/counter_state.dart';
import 'package:homework/practice2/state/history_item.dart';

class Practice2Page extends StatelessWidget {
  const Practice2Page({super.key});

  void showSnackBarMessage(String message, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Практическое №2'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const .all(15.0),
          child: Column(
            children: [
              StoreConnector<CounterState, int>(
                converter: (store) => store.state.count,
                builder: (context, counter) {
                  return Text('Counter: $counter', style: const TextStyle(fontSize: 18.0));
                },
              ),
              const SizedBox(height: 10.0),
              StoreConnector<CounterState, int>(
                converter: (store) => store.state.history.length,
                builder: (context, historyCount) {
                  return Text(
                    'Total operations: $historyCount',
                    style: const TextStyle(fontSize: 16.0),
                  );
                },
              ),
              const Padding(padding: .symmetric(vertical: 15.0), child: Divider()),
              StoreConnector<CounterState, List<HistoryItem>>(
                converter: (store) => store.state.history,
                builder: (context, historyList) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: historyList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: historyList[index].when(
                            increment: (value) => Text('Increment $value'),
                            decrement: (value) => Text('Decrement $value'),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: .min,
        children: [
          StoreConnector<CounterState, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(const CounterActions.increment());
            },
            builder: (context, callback) {
              return FloatingActionButton(onPressed: callback, child: const Icon(Icons.add));
            },
          ),
          const SizedBox(height: 10.0),
          StoreConnector<CounterState, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(const CounterActions.decrement());
            },
            builder: (context, callback) {
              return FloatingActionButton(onPressed: callback, child: const Icon(Icons.remove));
            },
          ),
        ],
      ),
    );
  }
}
