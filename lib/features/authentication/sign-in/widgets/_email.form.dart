import 'package:chathubs/core/constants/sizes.dart';
import 'package:chathubs/core/validators/validators.dart';
import 'package:chathubs/features/authentication/sign-in/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

class EmailForm extends GetView<SignInController> {
  const EmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.state.loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Email
          Text(
            'Email',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: ChathubsSizes.spaceBtwItems / 2),
          TextFormField(
            controller: controller.state.email,
            validator: (value) => ChathubsValidator.validateEmail(value),
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                hintText: 'youremail@email.xyz',
                hintStyle: Theme.of(context).textTheme.labelLarge),
          ),
          const SizedBox(height: ChathubsSizes.spaceBtwInputFields),

          // --- Password
          Text(
            'Password',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: ChathubsSizes.spaceBtwItems / 2),
          Obx(
            () => TextFormField(
              controller: controller.state.password,
              obscureText: controller.state.hidePassword.value,
              validator: (value) => ChathubsValidator.validatePassword(value),
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: controller.state.hidePassword.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye),
                    onPressed: () => controller.state.hidePassword.value =
                        !controller.state.hidePassword.value,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  hintText: 'yourpassword23@xyz',
                  hintStyle: Theme.of(context).textTheme.labelLarge),
            ),
          ),
        ],
      ),
    );
  }
}
