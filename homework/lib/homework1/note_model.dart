import 'package:flutter/widgets.dart';
import 'package:homework/homework1/note.dart';

class NoteModel extends ChangeNotifier {
  final List<Note> list = List.empty(growable: true);

  void addNote(String title, String category) {
    list.add(Note(name: title, category: category));
    notifyListeners();
  }

  void removeNote(int index) {
    list.removeAt(index);
    notifyListeners();
  }
}
