import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SortImageBlock extends StatelessWidget {
  const SortImageBlock(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.img});
  final VoidCallback onPressed;
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              height: MainPageSizes.sortImageSize,
              width: MainPageSizes.sortImageSize,
              img,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: MainPagePaddings.sortImageBottom,
          ),
          Text(
            text,
            style: AppTextStyles.sortBlockText,
          )
        ],
      ),
    );
  }
}
