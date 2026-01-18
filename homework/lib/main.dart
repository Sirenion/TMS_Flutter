import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/network/network_service.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/pages/homework_page.dart';
import 'package:homework/pages/practice_page.dart';
import 'package:provider/provider.dart';

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
        ShellRoute(
          builder: (context, state, child) {
            return MultiProvider(
              providers: [
                Provider(create: (context) => Dio()),
                Provider<NetworkService>(
                  create: (context) {
                    final dio = Provider.of<Dio>(context, listen: false);
                    return NetworkServiceImp(dio: dio);
                  },
                ),
              ],
              child: child,
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'practice',
              builder: (BuildContext context, GoRouterState state) {
                return const PracticePage();
              },
            ),
            GoRoute(
              path: 'homework',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeworkPage();
              },
            ),
          ],
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
