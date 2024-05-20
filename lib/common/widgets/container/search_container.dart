import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/device/device_utility.dart';
import 'package:techtackdatasub/utils/helpers/helper_functions.dart';

class TSearchBarContainer extends StatelessWidget {
  const TSearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBoder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBoder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBoder ? Border.all(color: TColors.grey) : null),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkerGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
