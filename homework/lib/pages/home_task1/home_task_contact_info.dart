import 'package:flutter/material.dart';
import 'package:homework/models/contacts.dart';
import 'package:homework/widgets/text_view.dart';

class HomeTaskContactInfo extends StatelessWidget {
  const HomeTaskContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final argument = switch (arguments) {
      Contacts() => arguments,
      _ => null,
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'О контакте', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                TextView(input: argument!.name),
                const SizedBox(height: 10.0),
                TextView(input: argument.phone),
                const SizedBox(height: 10.0),
                TextView(input: argument.birthday),
                const SizedBox(height: 10.0),
                TextView(input: argument.additionalInfo),
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
