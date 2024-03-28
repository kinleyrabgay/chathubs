// ignore_for_file: overridden_fields
import 'package:chathubs/core/routes/names.dart';
import 'package:chathubs/core/store/config.dart';
import 'package:chathubs/core/store/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // If user is first timer then route to OnboardingView()
    // If user is not first timer but not logged in then route to SignInVie()
    // If user is not first timer & logged in then route to HomeView()
    if (!ConfigStore.to.isFirstOpen) {
      return null;
    } else if (ConfigStore.to.isFirstOpen && UserStore.to.isLogin) {
      return const RouteSettings(name: AppRoutes.HOME);
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.snackbar('Tips', 'Login expired, please login again!'),
      );
      return const RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
