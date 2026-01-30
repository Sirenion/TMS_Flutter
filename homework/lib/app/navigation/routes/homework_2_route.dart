import 'package:homework/app/navigation/routes/app_route.dart';

class Homework2Route extends AppRoute {
  static const _routeName = 'homework2';
  static const _routePath = '/homework2';
  static const _relativePath = 'homework2';

  @override
  final String relativePath;

  Homework2Route.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
