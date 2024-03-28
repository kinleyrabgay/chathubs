import 'package:chathubs/core/constants/colors.dart';
import 'package:chathubs/core/constants/sizes.dart';
import 'package:chathubs/core/utils/device.utils.dart';
import 'package:chathubs/core/utils/helper.functions.dart';
import 'package:chathubs/features/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends GetView<OnboardingController> {
  const DotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ChathubsHelper.isDarkMode(context);

    return Positioned(
      bottom: ChathubsDevice.getBottomNavigationBarHeight() + 35,
      left: ChathubsSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? ChathubsColors.white : ChathubsColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClicked,
        count: 3,
      ),
    );
  }
}
