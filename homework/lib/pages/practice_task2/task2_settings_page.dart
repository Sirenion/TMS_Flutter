import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';
import 'package:homework/widgets/theme_inherited_widget.dart';

class Task2SettingsPage extends StatefulWidget {
  const Task2SettingsPage({super.key});

  @override
  State<Task2SettingsPage> createState() => _Task2SettingsPageState();
}

class _Task2SettingsPageState extends State<Task2SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeInherited = ThemeInheritedWidget.of(context);
    final bool darkTheme = themeInherited.themeData.brightness == Brightness.dark ? true : false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Настройки', textSize: 20.0),
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          ),
          textTheme: Theme.of(
            context,
          ).textTheme.copyWith(bodyLarge: const TextStyle(fontSize: 22.0, color: Colors.blue)),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const Text('Настройки темы'),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      const Text('Темная тема'),
                      Switch(value: darkTheme, onChanged: (value) => themeInherited.toggleTheme()),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text('Переопределенный локально текст'),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Локальная кнопка', style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
