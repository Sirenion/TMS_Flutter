import 'package:homework/app/navigation/routes/app_route.dart';

class Practice1Route extends AppRoute {
  static const _routeName = 'practice1';
  static const _routePath = '/practice1';
  static const _relativePath = 'practice1';

  @override
  final String relativePath;

  Practice1Route.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
