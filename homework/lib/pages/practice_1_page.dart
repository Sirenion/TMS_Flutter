import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:homework/practice1/todo_store.dart';

class Practice1Page extends StatefulWidget {
  const Practice1Page({super.key});

  @override
  State<Practice1Page> createState() => _Practice1PageState();
}

class _Practice1PageState extends State<Practice1Page> {
  void showSnackBarMessage(String message, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  final _store = TodoStore();

  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Практическое №1'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const .all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: .max,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Expanded(child: TextField(controller: _controller)),
                  TextButton(
                    onPressed: () {
                      _store.addItem(_controller.text);
                    },
                    child: const Text('Add'),
                  ),
                ],
              ),
              Observer(
                builder: (context) {
                  return Padding(
                    padding: const .symmetric(vertical: 15.0),
                    child: Text('Total tasks : ${_store.todos.length.toString()}'),
                  );
                },
              ),
              Observer(
                builder: (context) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: _store.todos.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: const .all(0.0),
                          title: Text(_store.todos[index]),
                          trailing: IconButton(
                            onPressed: () {
                              _store.removeItem(index);
                            },
                            icon: const Icon(Icons.close),
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
    );
  }
}
