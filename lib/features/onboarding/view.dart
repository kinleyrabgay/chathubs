import 'package:chathubs/core/constants/image.dart';
import 'package:chathubs/core/constants/text.dart';
import 'package:chathubs/features/onboarding/index.dart';
import 'package:chathubs/features/onboarding/widgets/_dot.navigation.dart';
import 'package:chathubs/features/onboarding/widgets/_next.button.dart';
import 'package:chathubs/features/onboarding/widgets/_page.dart';
import 'package:chathubs/features/onboarding/widgets/_skip.button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // --- Onboarding images
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                ImagePage(
                  image: ChathubsImage.onboardingImage1,
                  title: ChathubsText.onBoardingTitle1,
                  subtitle: ChathubsText.onBoardingSubTitle1,
                ),
                ImagePage(
                  image: ChathubsImage.onboardingImage2,
                  title: ChathubsText.onBoardingTitle2,
                  subtitle: ChathubsText.onBoardingSubTitle2,
                ),
                ImagePage(
                  image: ChathubsImage.onboardingImage3,
                  title: ChathubsText.onBoardingTitle3,
                  subtitle: ChathubsText.onBoardingSubTitle3,
                )
              ],
            ),

            // --- Skip button
            const Skip(),

            // --- Dot navigation
            const DotNavigation(),

            // --- Next button
            const NextButton(),
          ],
        ),
      ),
    );
  }
}
