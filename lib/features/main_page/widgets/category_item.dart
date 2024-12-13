import 'package:cosmetics_shop/features/main_page/data/classes/category_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.onPressed, required this.data});
  final VoidCallback onPressed;
  final CategoryItemData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: MainPageSizes.categoryImageWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                height: MainPageSizes.categoryImageHeight,
                width: MainPageSizes.categoryImageWidth,
                data.img,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: MainPagePaddings.categoryImageBottom,
            ),
            Text(
              data.type,
              style: AppTextStyles.categoryItemType,
            ),
            const SizedBox(
              height: MainPagePaddings.categoryItemTypeBottom,
            ),
            Text(
              data.name,
              style: AppTextStyles.categoryItemName,
            ),
            const SizedBox(
              height: MainPagePaddings.categoryItemNameBottom,
            ),
            Text(
              data.price,
              style: AppTextStyles.categoryItemPrice,
            )
          ],
        ),
      ),
    );
  }
}
