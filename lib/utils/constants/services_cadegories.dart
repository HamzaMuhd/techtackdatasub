import 'package:techtackdatasub/utils/constants/image_strings.dart';

class CategoriesData {
  static final List<Category> categories = [
    Category(
      title: 'Data',
      image: TImages.dataIcon,
      onTap: () {},
    ),
    Category(
      title: 'Airtime',
      image: TImages.airtimeIcon,
      onTap: () {},
    ),
    Category(
      title: 'Convert Airtime',
      image: TImages.airtimetoCashA,
      onTap: () {},
    ),
    Category(
      title: 'Cable',
      image: TImages.cableIcon,
      onTap: () {},
    ),
    Category(
      title: 'Electricity',
      image: TImages.electricityIcon,
      onTap: () {},
    ),
    Category(
      title: 'Exam pin',
      image: TImages.examIcon,
      onTap: () {},
    ),
    Category(
      title: 'Refer',
      image: TImages.referIcon,
      onTap: () {},
    ),
    Category(
      title: 'Datacard',
      image: TImages.datacardIcon,
      onTap: () {},
    ),
    Category(
      title: 'Recharge Card',
      image: TImages.rechargeIcon,
      onTap: () {},
    ),
  ];
}

class Category {
  final String title;
  final String image;
  final void Function() onTap;

  Category({
    required this.title,
    required this.image,
    required this.onTap,
  });
}
