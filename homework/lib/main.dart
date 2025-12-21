import 'package:flutter/material.dart';
import 'package:homework/counter.dart';
import 'package:homework/inheritedCounter.dart';
import 'package:homework/textView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "GoogleSans",
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Моё первое приложение Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: TextView(input: widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset(
              "assets/images/flutter-logo.png",
              height: 150,
            ),
            SizedBox(height: 20),
            TextView(input: "Добро пожаловать во Flutter"),
            Counter(),
            InhCountWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Кнопка нажата");
          },
          child: Icon(Icons.games_sharp)
      ),
    );
  }
}



