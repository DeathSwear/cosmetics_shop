import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  const SearchText({
    super.key,
    required this.data,
    required this.onPressed,
    this.additionalIcon,
  });
  final SearchTextData data;
  final VoidCallback onPressed;
  final Widget? additionalIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(
            data.text,
            style: AppTextStyles.searchPageText,
          ),
          const SizedBox(
            width: CatalogPagePaddings.additionalIconLeft,
          ),
          if (additionalIcon != null) additionalIcon!,
        ],
      ),
    );
  }
}
