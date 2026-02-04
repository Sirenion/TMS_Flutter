import 'package:homework/app/navigation/routes/app_route.dart';
import 'package:homework/app/navigation/routes/practice_2_route.dart';
import 'package:homework/app/navigation/routes/practice_1_route.dart';

class HomeRoute extends AppRoute {
  static const _routeName = 'home';
  static const _routePath = '/home';

  @override
  String get relativePath => routePath;

  late final practice1 = Practice1Route.child(rootRouteName: routeName, rootRoutePath: routePath);

  late final practice2 = Practice2Route.child(rootRouteName: routeName, rootRoutePath: routePath);

  HomeRoute() : super(routeName: _routeName, routePath: _routePath);
}
