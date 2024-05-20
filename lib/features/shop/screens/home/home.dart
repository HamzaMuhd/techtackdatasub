import 'package:flutter/material.dart';
import 'package:techtackdatasub/common/widgets/container/primary_header_container.dart';
// import 'package:techtackdatasub/common/widgets/container/search_container.dart';
import 'package:techtackdatasub/common/widgets/container/wallet_card.dart';
import 'package:techtackdatasub/common/widgets/texts/section_heading.dart';
import 'package:techtackdatasub/features/shop/screens/home/home_appbar.dart';
import 'package:techtackdatasub/features/shop/screens/home/widgets/home_categories.dart';
import 'package:techtackdatasub/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/image_strings.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  WalletCard(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Quick Links >>',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems * 0.8,
                        ),
                        HomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: TSizes.spaceBtwItems,
            // ),
            // TSearchBarContainer(
            //   text: 'Search Transactions',
            // ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.bannerOne,
                  TImages.bannerTwo,
                  TImages.bannerThree
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
