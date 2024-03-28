// ignore_for_file: constant_identifier_names
import 'package:chathubs/core/middlewares/middleware.dart';
import 'package:chathubs/core/routes/names.dart';
import 'package:chathubs/features/authentication/sign-in/binding.dart';
import 'package:chathubs/features/authentication/sign-in/view.dart';
import 'package:chathubs/features/home/index.dart';
import 'package:chathubs/features/onboarding/index.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static List<String> history = [];

  static final List<GetPage> routes = [
    // -- Onboarding
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const OnboardingView(),
        binding: OnboardingBinding(),
        middlewares: [RouteAuthMiddleware(priority: 1)]),

    // --- SignIn
    GetPage(
        name: AppRoutes.SIGN_IN,
        page: () => const SignInView(),
        binding: SignInBinding()),

    // --- Home
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
  ];
}
