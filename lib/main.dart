import 'package:flutter/material.dart';
import 'package:task1_algoriza/app_route.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp(
    appRoute: AppRoute(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.appRoute}) : super(key: key);
  final AppRoute appRoute;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
