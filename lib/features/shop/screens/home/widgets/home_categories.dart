import 'package:flutter/material.dart';
import 'package:techtackdatasub/features/shop/screens/home/widgets/vertical_image_text.dart';
import 'package:techtackdatasub/utils/constants/services_cadegories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: CategoriesData.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category = CategoriesData.categories[index];
            return TVerticalImageText(
              image: category.image,
              title: category.title,
              onTap: category.onTap,
            );
          }),
    );
  }
}
