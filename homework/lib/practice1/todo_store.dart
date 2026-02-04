import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  @observable
  ObservableList<String> todos = ObservableList<String>();

  @action
  void addItem(String task) {
    todos.add(task);
  }

  @action
  void removeItem(int index) {
    todos.removeAt(index);
  }
}
