import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtackdatasub/common/styles/spacing_styles.dart';
import 'package:techtackdatasub/features/authentication/controllers/auth_controller.dart';
import 'package:techtackdatasub/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:techtackdatasub/features/authentication/screens/login/widgets/login_form.dart';
import 'package:techtackdatasub/features/authentication/screens/login/widgets/login_header.dart';
import 'package:techtackdatasub/features/authentication/screens/login/widgets/social_bottuns.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpasingStyle.padddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo title and Sub title
              const TLoginHeader(),

              /// Form
              TLoginForm(
                usernameController: _usernameController,
                passwordController: _passwordController,
              ),
              // Divider
              TLoginDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
