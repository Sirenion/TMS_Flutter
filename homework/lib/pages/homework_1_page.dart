import 'package:flutter/material.dart';
import 'package:homework/homework1/note_model.dart';
import 'package:provider/provider.dart';

class Homework1Page extends StatefulWidget {
  const Homework1Page({super.key});

  @override
  State<Homework1Page> createState() => _Homework1PageState();
}

class _Homework1PageState extends State<Homework1Page> {
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }

    return ChangeNotifierProvider(
      create: (context) => NoteModel(),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(title: const Text('Домашнее №1'), centerTitle: true),
          body: SafeArea(
            child: Padding(
              padding: const .all(15.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    onTapOutside: ((event) {
                      FocusScope.of(context).unfocus();
                    }),
                    decoration: InputDecoration(
                      labelText: 'Заголовок',
                      labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextField(
                    controller: _categoryController,
                    onTapOutside: ((event) {
                      FocusScope.of(context).unfocus();
                    }),
                    decoration: InputDecoration(
                      labelText: 'Категория',
                      labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {
                        if (_titleController.text.isNotEmpty &&
                            _categoryController.text.isNotEmpty) {
                          context.read<NoteModel>().addNote(
                            _titleController.text,
                            _categoryController.text,
                          );
                          _titleController.clear();
                          _categoryController.clear();
                        } else {
                          showSnackBarMessage('Заполните поля');
                        }
                      },
                      child: const Text(
                        'Добавить заметку',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Consumer<NoteModel>(
                    builder: (context, model, child) {
                      return Expanded(
                        child: ListView.separated(
                          itemCount: model.list.length,
                          separatorBuilder: (context, _) => const Divider(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(model.list[index].name),
                              subtitle: Text(model.list[index].category),
                              contentPadding: const .only(right: 0.0, left: 10.0),
                              trailing: IconButton(
                                onPressed: () {
                                  final name = model.list[index].name;
                                  context.read<NoteModel>().removeNote(index);
                                  showSnackBarMessage('Note $name removed');
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
      },
    );
  }
}
