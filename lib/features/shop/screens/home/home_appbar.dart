import 'package:flutter/material.dart';
import 'package:techtackdatasub/common/widgets/appbar/appbar.dart';
import 'package:techtackdatasub/common/widgets/notification/notification_card.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/image_strings.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/constants/text_strings.dart';

import 'package:techtackdatasub/utils/helpers/helper_functions.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = THelperFunctions().getUserFromStorage();
    final name = user?.name ?? 'No username found';
    return TAppBar(
      title: Row(
        children: [
          const AvatarImage(),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              TTexts.homeAppBarTitile,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey),
            ),
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white),
            ),
          ]),
        ],
      ),
      actions: [
        TCardCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: dark ? TColors.black : TColors.white),
      child: const Image(
        image: AssetImage(TImages.avatarIcon),
      ),
    );
  }
}
