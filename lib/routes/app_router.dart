import 'package:flutter/cupertino.dart';

import '../screens/home_screen.dart';
import '../screens/error_screen.dart';
import '../routes/custom_app_route.dart';
import '../screens/new_spending_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CustomAppRoute.homeScreen:
        return CustomAppRoute.goToRoute(
            const HomeScreen(), CustomAppRoute.homeScreen);
      case CustomAppRoute.newSpendingScreen:
        return CustomAppRoute.goToRoute(
            const NewSpendingScreen(), CustomAppRoute.newSpendingScreen);
      default:
        return CustomAppRoute.goToRoute(
            const ErrorScreen(), CustomAppRoute.errorScreen);
    }
  }
}
