import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/models/contacts.dart';
import 'package:homework/widgets/text_view.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key, required this.contact});

  final Contacts contact;

  @override
  Widget build(BuildContext context) {
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
                TextView(input: contact.name),
                const SizedBox(height: 10.0),
                TextView(input: contact.phone),
                const SizedBox(height: 10.0),
                TextView(input: contact.birthday),
                const SizedBox(height: 10.0),
                TextView(input: contact.additionalInfo),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () => context.go('/'),
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
