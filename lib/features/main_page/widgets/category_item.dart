import 'package:cosmetics_shop/features/main_page/data/classes/category_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
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
        width: MainPageSizes.categoryImageSectionWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  height: MainPageSizes.categoryImageSectionHeight,
                  width: MainPageSizes.categoryImageSectionWidth,
                  decoration: BoxDecoration(
                    color: AppColors.whiteGray,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      data.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (data.lastPrice != null)
                  Positioned(
                    right: MainPagePaddings.shareImage,
                    top: MainPagePaddings.shareImage,
                    child: Image.asset(
                      ImageSource.share,
                      fit: BoxFit.cover,
                      height: MainPageSizes.shareImageSize,
                      width: MainPageSizes.shareImageSize,
                    ),
                  ),
              ],
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
            Row(
              children: [
                Text(
                  data.price,
                  style: AppTextStyles.categoryItemPrice,
                ),
                const SizedBox(
                  width: MainPagePaddings.categoryItemPriceRight,
                ),
                if (data.lastPrice != null)
                  Text(
                    data.lastPrice!,
                    style: AppTextStyles.categoryItemLastPrice,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
