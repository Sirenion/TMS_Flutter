import 'package:homework/app/navigation/routes/app_route.dart';

class Practice2Route extends AppRoute {
  static const _routeName = 'practice2';
  static const _routePath = '/practice2';
  static const _relativePath = 'practice2';

  @override
  final String relativePath;

  Practice2Route.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
