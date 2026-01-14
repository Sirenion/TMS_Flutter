import 'package:flutter/material.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/pages/home_task1/home_task_about.dart';
import 'package:homework/pages/home_task1/home_task_contact_info.dart';
import 'package:homework/pages/home_task1/home_task_contacts.dart';
import 'package:homework/pages/home_task1/home_task_main.dart';
import 'package:homework/pages/practice_task1/task1_home_page.dart';
import 'package:homework/pages/practice_task1/task1_second_page.dart';
import 'package:homework/pages/practice_task1/task1_third_page.dart';
import 'package:homework/pages/practice_task2/task2_home_page.dart';
import 'package:homework/pages/practice_task2/task2_settings_page.dart';
import 'package:homework/widgets/theme_inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _currentTheme = ThemeData.light();

  void toggleTheme() {
    setState(() {
      _currentTheme = (_currentTheme == ThemeData.light()) ? ThemeData.dark() : ThemeData.light();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      themeData: _currentTheme,
      toggleTheme: toggleTheme,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeInheritedWidget.of(context).themeData,
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePage(),
              '/practise_task1': (context) => const Task1HomePage(),
              '/practise_task1/second_page': (context) => const Task1SecondPage(),
              '/practise_task1/third_page': (context) => const Task1ThirdPage(),
              '/practise_task2': (context) => const Task2HomePage(),
              '/practise_task2/settings': (context) => const Task2SettingsPage(),
              '/home_task1&2': (context) => const HomeTaskMain(),
              '/home_task1&2/about': (context) => const HomeTaskAbout(),
              '/home_task1&2/contacts': (context) => const HomeTaskContacts(),
              '/home_task1&2/contacts/info': (context) => const HomeTaskContactInfo(),
            },
          );
        },
      ),
    );
  }
}
