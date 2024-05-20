import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtackdatasub/features/authentication/controllers/auth_controller.dart';
import 'package:techtackdatasub/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:techtackdatasub/features/authentication/screens/signup/signup.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                labelText: TTexts.username,
              ),
              controller: usernameController,
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFeilds,
            ),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffix: Icon(Iconsax.eye_slash)),
              controller: passwordController,
            ),
            const SizedBox(height: TSizes.spaceBtwInputFeilds / 2),
            // Remember me & Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Sign In
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Call login method from AuthController
                  Get.find<AuthController>().login(
                    usernameController.text,
                    passwordController.text,
                  );
                },
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SingupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// () => Get.to(() => const NavigationMenu())