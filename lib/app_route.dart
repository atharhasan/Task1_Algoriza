import 'package:flutter/material.dart';
import 'package:task1_algoriza/constants/String.dart';
import 'package:task1_algoriza/screens/on_boarding.dart';
import 'package:task1_algoriza/screens/register_screen.dart';

import 'screens/login_screen.dart';

class AppRoute {
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoarding());

      case loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case registerScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterScreen());
    }
  }
}
