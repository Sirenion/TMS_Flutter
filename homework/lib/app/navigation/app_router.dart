import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/app/navigation/routes/app_routes.dart';
import 'package:homework/app/network_service.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/pages/homework_1_page.dart';
import 'package:homework/pages/practice_1_page.dart';
import 'package:provider/provider.dart';

GoRouter createRouter() {
  final appRoutes = AppRoutes();
  return GoRouter(
    initialLocation: appRoutes.home.routePath,
    routes: [
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
        routes: [
          GoRoute(
            name: appRoutes.home.routeName,
            path: appRoutes.home.relativePath,
            builder: (context, state) {
              return HomePage(route: appRoutes.home);
            },
            routes: [
              GoRoute(
                name: appRoutes.home.practice1.routeName,
                path: appRoutes.home.practice1.relativePath,
                builder: (context, state) {
                  return const Practice1Page();
                },
              ),
              GoRoute(
                name: appRoutes.home.homework1.routeName,
                path: appRoutes.home.homework1.relativePath,
                builder: (context, state) {
                  return const Homework1Page();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
