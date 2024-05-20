import 'package:flutter/material.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';
import 'package:techtackdatasub/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgrondColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkimage = false,
    this.onPressed,
    this.boderRadius = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgrondColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkimage;
  final VoidCallback? onPressed;
  final double boderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgrondColor,
            borderRadius: BorderRadius.circular(boderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(boderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkimage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
