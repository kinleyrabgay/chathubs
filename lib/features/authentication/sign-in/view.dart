import 'package:chathubs/core/constants/colors.dart';
import 'package:chathubs/core/constants/image.dart';
import 'package:chathubs/core/constants/sizes.dart';
import 'package:chathubs/features/authentication/sign-in/index.dart';
import 'package:chathubs/features/authentication/sign-in/widgets/_email.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: ChathubsSizes.defaultSpace,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // --- Logo
                        Image.asset(ChathubsImage.facebook, scale: 10),
                        const SizedBox(height: ChathubsSizes.spaceBtwItems * 2),
                        // --- Label Heading
                        Text(
                          'Login to Chathubs',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: ChathubsColors.darkerGrey),
                        ),
                        const SizedBox(height: ChathubsSizes.spaceBtwItems / 2),

                        // --- Label Sub-heading
                        Text(
                          "We're happy to see you back again!",
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: ChathubsSizes.spaceBtwSections),

                // --- Email Authentication Form
                const EmailForm(),
                const SizedBox(height: ChathubsSizes.spaceBtwSections)

                // --- Social Authentication
              ],
            ),
          ),
        ),
      ),
    );
  }
}
