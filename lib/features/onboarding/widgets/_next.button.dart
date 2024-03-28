import 'package:chathubs/core/constants/colors.dart';
import 'package:chathubs/core/constants/sizes.dart';
import 'package:chathubs/core/utils/device.utils.dart';
import 'package:chathubs/core/utils/helper.functions.dart';
import 'package:chathubs/features/onboarding/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextButton extends GetView<OnboardingController> {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ChathubsHelper.isDarkMode(context);
    return Positioned(
      right: ChathubsSizes.defaultSpace,
      bottom: ChathubsDevice.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor:
                dark ? ChathubsColors.primary : ChathubsColors.black),
        child: const Icon(
          CupertinoIcons.arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
