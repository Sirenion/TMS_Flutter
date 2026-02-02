import 'package:homework/app/navigation/routes/app_route.dart';

class Homework1Route extends AppRoute {
  static const _routeName = 'homework1';
  static const _routePath = '/homework1';
  static const _relativePath = 'homework1';

  @override
  final String relativePath;

  Homework1Route.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
