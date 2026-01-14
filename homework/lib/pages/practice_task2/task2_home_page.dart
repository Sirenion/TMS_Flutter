import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';
import 'package:homework/widgets/theme_inherited_widget.dart';

class Task2HomePage extends StatelessWidget {
  const Task2HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeInherited = ThemeInheritedWidget.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Экран выбора темы', textSize: 20.0),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.of(context).pushNamed('/practise_task2/settings');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Текущая тема: ${themeInherited.themeData.brightness == Brightness.dark ? 'Темная' : 'Светлая'}',
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: themeInherited.toggleTheme,
                child: const Text('Переключить тему'),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Локальная кнопка', style: TextStyle(color: Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
