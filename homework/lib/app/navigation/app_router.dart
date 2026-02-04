import 'package:go_router/go_router.dart';
import 'package:homework/app/navigation/routes/app_routes.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/pages/practice_2_page.dart';
import 'package:homework/pages/practice_1_page.dart';

GoRouter createRouter() {
  final appRoutes = AppRoutes();
  return GoRouter(
    initialLocation: appRoutes.home.routePath,
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
            name: appRoutes.home.practice2.routeName,
            path: appRoutes.home.practice2.relativePath,
            builder: (context, state) {
              return const Practice2Page();
            },
          ),
        ],
      ),
    ],
  );
}
