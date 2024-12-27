import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border:
            Border.all(color: AppColors.blackColor.withOpacity(0.1), width: 1),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.zero,
            fixedSize: Size(maxWidth * MainPageSizes.borderButtonWidthScale,
                maxHeight * MainPageSizes.borderButtonHeigthScale)),
        child: Text(
          text,
          style: AppTextStyles.borderButton,
        ),
      ),
    );
  }
}
