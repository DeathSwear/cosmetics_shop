import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class OpacityButton extends StatelessWidget {
  const OpacityButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: AppColors.whiteColor, width: 2),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            padding: EdgeInsets.zero,
            fixedSize: const Size(MainPageSizes.sliderButtonWidth,
                MainPageSizes.sliderButtonHeight)),
        child: Text(
          text,
          style: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}
