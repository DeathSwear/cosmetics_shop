import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isCurrent});
  final String text;
  final VoidCallback onPressed;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        elevation: 0,
        alignment: Alignment.center,
        backgroundColor:
            isCurrent ? AppColors.mattButtonColor : AppColors.whiteGray,
        foregroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        padding: const EdgeInsets.symmetric(
          horizontal: CatalogPagePaddings.chipTextHorizontal,
          vertical: 0,
        ),
      ),
      child: Text(
        text,
        style:
            isCurrent ? AppTextStyles.chipActive : AppTextStyles.chipInactive,
      ),
    );
  }
}
