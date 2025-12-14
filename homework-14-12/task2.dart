import 'dart:async';

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Получены данные");
}

void main() async {
  print("Отправка запроса");
  fetchData().then((e) => print(e));

  final StreamController<int> streamController = StreamController<int>();

  streamController.stream.listen(
        (data) => print(data),
    onDone: () => print("Поток закрыт"),
  );

  int i = 1;

  while (i <= 10) {
    streamController.add(i);
    if (i == 10) {
      streamController.close();
    } else {
      i++;
      await Future.delayed(Duration(seconds: 1));
    }
  }
}