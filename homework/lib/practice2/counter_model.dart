import 'package:flutter/cupertino.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
