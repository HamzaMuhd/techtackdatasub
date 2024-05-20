import 'package:flutter/material.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgrondColor,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgrondColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                    color: backgrondColor ??
                        (dark ? TColors.black : TColors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    // color: dark ? TColors.light : TColors.dark,
                  ),
                )),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
