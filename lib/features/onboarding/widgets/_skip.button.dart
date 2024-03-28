import 'package:chathubs/features/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Skip extends GetView<OnboardingController> {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () => controller.skipPage(),
        child: const Text(
          'Skip',
        ),
      ),
    );
  }
}
