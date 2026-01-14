import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class HomeTaskAbout extends StatelessWidget {
  const HomeTaskAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'О приложении', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                const Text(
                  textAlign: .justify,
                  'Приложение представляет собой современное цифровое решение с интуитивно понятной '
                  'навигацией, разработанной для быстрого доступа к основным функциям. Главный экран '
                  'служит отправной точкой и содержит ключевые разделы, структурированные в виде '
                  'нижнего навигационного меню или боковой панели, что позволяет пользователю '
                  'легко ориентироваться в интерфейсе. Логичная иерархия экранов снижает время на '
                  'поиск нужной информации и делает взаимодействие с приложением комфортным даже для '
                  'новых пользователей. \n\nНавигация между разделами происходит плавно и предсказуемо, с '
                  'визуальными подсказками и анимациями переходов, которые помогают сохранять контекст '
                  'действий. Пользователь всегда понимает, где он находится и как вернуться на '
                  'предыдущий экран или главный раздел. Благодаря продуманной навигационной системе '
                  'приложение подходит как для повседневного использования, так и для решения более '
                  'сложных задач, не перегружая интерфейс лишними элементами.',
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const TextView(input: 'Назад'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
