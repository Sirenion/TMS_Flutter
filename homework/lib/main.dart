import 'package:flutter/material.dart';
import 'package:homework/app/homework.dart';
import 'package:homework/app/navigation/app_router.dart';

final _router = createRouter();

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Homework(router: _router));
}
