import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border(
            bottom: BorderSide(
                color: AppColors.disableGray.withOpacity(0.2),
                width: CatalogPageSizes.searchBorderBottomWidth),
          )),
      child: TextField(
        controller: controller,
        cursorColor: AppColors.black25Color,
        style: AppTextStyles.searchText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: AppStrings.find,
          hintStyle: AppTextStyles.searchText,
          prefixIconConstraints:
              const BoxConstraints(minHeight: 0, minWidth: 0),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
                right: CatalogPagePaddings.searchIconRight),
            child: Image.asset(
              height: CatalogPageSizes.searchIconSize,
              width: CatalogPageSizes.searchIconSize,
              ImageSource.glassBarIcon,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
