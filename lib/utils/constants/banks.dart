import 'package:flutter/material.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/image_strings.dart';

class Banks {
  final String image, bankname;
  final Color color;

  Banks({required this.image, required this.bankname, required this.color});
}

class BanksData {
  static final List<Banks> banks = [
    Banks(
        image: TImages.moniepoint,
        bankname: 'Moiniepoint',
        color: TColors.moniepoint),
    Banks(image: TImages.wema, bankname: 'Wema Bank', color: TColors.wema),
    Banks(
        image: TImages.sterling,
        bankname: 'Sterling Bank',
        color: TColors.sterling),
    Banks(
        image: TImages.fidelity,
        bankname: 'Fidelity Bank',
        color: TColors.fidelity)
  ];
}
