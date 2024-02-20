
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/features/login/logic/login_screen.dart';
import 'package:doc_app/features/login/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute<void>(
            builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute<void>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
