import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techtackdatasub/utils/constants/banks.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';
import 'package:techtackdatasub/utils/device/device_utility.dart';
import 'package:techtackdatasub/utils/helpers/helper_functions.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: BanksData.banks.length,
        options: CarouselOptions(
          viewportFraction: 1,
        ),
        itemBuilder: (context, index, realIndex) {
          final banks = BanksData.banks[index];
          return WalletContainer(
            image: banks.image,
            bankname: banks.bankname,
            color: banks.color,
          );
        });
  }
}

class WalletContainer extends StatelessWidget {
  const WalletContainer({
    super.key,
    required this.image,
    required this.bankname,
    required this.color,
  });

  final String image, bankname;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final BalanceVisibilityController controller =
        Get.put(BalanceVisibilityController());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          height: 180,
          padding: const EdgeInsets.all(TSizes.cardRadiusLg),
          decoration: BoxDecoration(
            color: color.withOpacity(0.7),
            borderRadius: BorderRadius.circular(TSizes.md),
            border: Border.all(color: TColors.grey),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bankname,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: TColors.white),
                  ),
                  // SizedBox(
                  //   width: 40,
                  // ),
                  Image(
                    image: AssetImage(image),
                    height: 45,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Account Balance',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .apply(color: TColors.grey),
                          ),
                          const SizedBox(
                            width: TSizes.sm,
                          ),
                          IconButton(
                            constraints: const BoxConstraints(),
                            style: const ButtonStyle(
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {
                              controller.toggleVisibility();
                            },
                            padding: const EdgeInsets.all(0),
                            icon: Obx(
                              () => Icon(
                                controller.isBalanceVisible.value
                                    ? Iconsax.eye
                                    : Iconsax.eye_slash,
                                size: 17,
                                color: TColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Obx(
                        () => Text(
                          controller.isBalanceVisible.value
                              ? "₦20,000.00"
                              : '********',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: TColors.white),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 40,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Refferal Balance',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.grey),
                      ),
                      Text(
                        "₦0.00",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.white),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Account Number',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .apply(color: TColors.grey),
                          ),
                          const SizedBox(
                            width: TSizes.sm,
                          ),
                          IconButton(
                            constraints: const BoxConstraints(),
                            style: const ButtonStyle(
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {},
                            padding: const EdgeInsets.all(0),
                            icon: const Icon(
                              Iconsax.copy,
                              size: 15,
                              color: TColors.white,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "0069087818",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .apply(color: TColors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Charges',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.grey),
                      ),
                      Text(
                        "₦50.00",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.white),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Name',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.grey),
                      ),
                      Text(
                        "EASYCONNECT",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .apply(color: TColors.white),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Iconsax.wallet,
                        color: TColors.white,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
