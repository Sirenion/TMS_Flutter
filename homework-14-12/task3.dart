import 'dart:async';

class Counter {
  int _count = 0;
  final StreamController<int> streamController;

  Counter(this.streamController);

  void increment() {
    _count++;
    streamController.add(_count);
  }

  void decrement() {
    _count--;
    if (_count < 0) {
      streamController.addError("Значение отрицательное");
      streamController.close();
    } else {
      streamController.add(_count);
    }
  }

}

void main() async {

  final StreamController<int> streamController = StreamController<int>();

  Counter counter = Counter(streamController);

  streamController.stream.listen(
        (data) => print(data),
    onError: (e) => print('Ошибка: $e'),
    onDone: () => print("Поток закрыт"),
  );

  counter.increment();
  counter.increment();

  counter.decrement();
  counter.decrement();
  counter.decrement();
}