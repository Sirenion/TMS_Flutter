import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/models/contacts.dart';
import 'package:homework/pages/contact_page.dart';
import 'package:homework/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            final Contacts contact = state.extra as Contacts;
            return ContactPage(contact: contact);
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
