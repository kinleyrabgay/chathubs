import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInState {
  final title = 'Sign In'.obs;

  // --- Login Form
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final hidePassword = false.obs;
  final rememberMe = false.obs;

  final email = TextEditingController();
  final password = TextEditingController();
}
