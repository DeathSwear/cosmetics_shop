import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class MattButton extends StatelessWidget {
  const MattButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width});
  final String text;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          elevation: 0,
          alignment: Alignment.center,
          backgroundColor: AppColors.mattButtonColor,
          foregroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          padding: EdgeInsets.zero,
          fixedSize: Size(width, MainPageSizes.mattButtonHeight)),
      child: Text(
        text,
        style: AppTextStyles.opacityButton,
      ),
    );
  }
}
