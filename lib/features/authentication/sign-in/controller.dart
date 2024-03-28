import 'package:chathubs/features/authentication/sign-in/index.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  @override
  void onInit() {
    FlutterNativeSplash.remove();
    super.onInit();
  }

  Future<void> emailAuth() async {}
  Future<void> googleAuth() async {}
}
