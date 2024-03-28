import 'package:chathubs/core/routes/routes.dart';
import 'package:chathubs/core/services/storage.dart';
import 'package:chathubs/core/utils/storage.keys.dart';
import 'package:chathubs/features/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  OnboardingController();
  final state = OnboardingState();

  // --- Variables
  final pageController = PageController();

  @override
  void onInit() {
    FlutterNativeSplash.remove();
    super.onInit();
  }

  void updatePageIndicator(index) {
    state.currentPageIndex.value = index;
  }

  void dotNavigationClicked(index) {
    state.currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (state.currentPageIndex.value == 2) {
      // --- Set to device;
      StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN, true);
      Get.offAllNamed(AppRoutes.SIGN_IN);
    } else {
      int page = state.currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    state.currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
