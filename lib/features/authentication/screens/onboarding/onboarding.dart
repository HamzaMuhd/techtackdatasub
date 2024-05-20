import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtackdatasub/features/authentication/controllers/onboarding_controller.dart';
import 'package:techtackdatasub/features/authentication/screens/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:techtackdatasub/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:techtackdatasub/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:techtackdatasub/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:techtackdatasub/utils/constants/image_strings.dart';
import 'package:techtackdatasub/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingimage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingimage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingimage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
