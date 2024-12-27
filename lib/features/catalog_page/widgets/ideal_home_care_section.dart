import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/widgets/matt_button.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class IdealHomeCareSection extends StatelessWidget {
  const IdealHomeCareSection(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.text});
  final String title;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageSource.homeCareBack),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: CatalogPagePaddings.homeCareHorizontal,
              vertical: CatalogPagePaddings.homeCareVertical),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.beautiTitle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: CatalogPagePaddings.homeCareTextTop,
                    bottom: CatalogPagePaddings.homeCareTextBottom),
                child: Text(
                  text,
                  style: AppTextStyles.beautiText,
                ),
              ),
              MattButton(
                text: AppStrings.startTest,
                onPressed: () {},
                width: CatalogPageSizes.beautiMattButtonWidth,
              ),
            ],
          ),
        ));
  }
}
