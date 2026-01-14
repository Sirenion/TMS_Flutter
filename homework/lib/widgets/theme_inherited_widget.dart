import 'package:flutter/material.dart';

class ThemeInheritedWidget extends InheritedWidget {
  final ThemeData themeData;
  final VoidCallback toggleTheme;

  const ThemeInheritedWidget({
    super.key,
    required super.child,
    required this.themeData,
    required this.toggleTheme,
  });

  static ThemeInheritedWidget of(BuildContext context) {
    final ThemeInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
    assert(result != null, 'No ThemeInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeInheritedWidget old) {
    return themeData != old.themeData;
  }
}
