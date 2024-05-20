import 'package:flutter/material.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/image_strings.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/helpers/helper_functions.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
            color: dark ? Colors.white : TColors.white,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconLg,
              height: TSizes.iconLg,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        // const SizedBox(
        //   width: TSizes.spaceBtwItems,
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: TColors.grey),
        //       borderRadius: BorderRadius.circular(100)),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Image(
        //       width: TSizes.iconMd,
        //       height: TSizes.iconLg,
        //       image: AssetImage(TImages.facebooks),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
