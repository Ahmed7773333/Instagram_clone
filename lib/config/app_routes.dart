import 'package:flutter/material.dart';
import 'package:insta_app/features/home%20layout/pages/home_layout.dart';
import 'package:insta_app/features/home%20layout/pages/profile_edit.dart';

import '../../core/utils/app_strings.dart';
import '../../core/utils/app_styles.dart';
import '../features/sign_in.dart';
import '../features/splach_screen.dart';
import '../features/start_screen.dart';

class Routes {
  static const String splach = '/';
  static const String start = 'start';
  static const String signIn = 'signIn';
  static const String home = 'home';
  static const String profile = 'profile';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splach:
        return MaterialPageRoute(builder: (_) => const SplachScreen());
      case Routes.start:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => SingInScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeLayout());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileEdit());

      default:
        return unDefinedScreen();
    }
  }

  static Route<dynamic> unDefinedScreen() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(
                  AppStrings.noRoute,
                  style: AppStyles.title,
                ),
              ),
              body: Center(
                child: Text(
                  AppStrings.noRoute,
                  style: AppStyles.title,
                ),
              ),
            ));
  }
}
