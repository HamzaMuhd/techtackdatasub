import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtackdatasub/features/authentication/screens/signup/verify_email.dart';
import 'package:techtackdatasub/features/authentication/screens/signup/widgets/termtextbox.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/constants/text_strings.dart';

class TsignupForm extends StatelessWidget {
  const TsignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user))),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit))),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct))),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call))),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            decoration: const InputDecoration(
                labelText: "Refferal Username",
                prefixIcon: Icon(Iconsax.user_edit))),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            )),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Confirm Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            )),
        const SizedBox(
          height: TSizes.spaceBtwInputFeilds,
        ),
        // Terms and Condition Textbox
        const TTermTextBox(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        // Create Account Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
