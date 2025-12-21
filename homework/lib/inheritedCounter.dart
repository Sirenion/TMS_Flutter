import 'package:flutter/material.dart';
import 'package:homework/textView.dart';

class InheritedCounter extends InheritedWidget{
  const InheritedCounter({super.key, required super.child, required this.counter});

  final int counter;

  static InheritedCounter? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result = maybeOf(context);
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) => counter != oldWidget.counter;
}

class InhCountWidget extends StatefulWidget {
  const InhCountWidget({super.key});

  @override
  State<InhCountWidget> createState() => _InhCountWidgetState();
}

class _InhCountWidgetState extends State<InhCountWidget> {
  int _counter = 0;

  void _pushButton() {
    print("Inherited Кнопка нажата");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
        counter: _counter,
        child: Builder(
          builder: (BuildContext innerContext) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextView(input: "Нажатий на кнопку: ${InheritedCounter
                    .of(innerContext)
                    .counter}"),
                OutlinedButton(
                    onPressed: _pushButton,
                    child: TextView(input: "Нажми меня")
                )
              ],
            );
          },
        )
    );
  }
}
