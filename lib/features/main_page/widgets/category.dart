import 'package:cosmetics_shop/features/main_page/data/classes/category_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/widgets/category_item.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.tag,
      required this.data,
      required this.gradient});
  final String tag;
  final List<CategoryItemData> data;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: MainPagePaddings.sortImageBlockFirstLeft),
          child: Text(tag, style: AppTextStyles.categoryTitle),
        ),
        Container(
          margin: const EdgeInsets.only(
              bottom: MainPagePaddings.categoryTitleBottom,
              left: MainPagePaddings.sortImageBlockFirstLeft),
          height: MainPageSizes.categoryGradientHeight,
          width: MainPageSizes.categoryGradientWidth,
          decoration: BoxDecoration(
            gradient: gradient,
          ),
        ),
        SizedBox(
          height: MainPageSizes.categoryHeight +
              MainPagePaddings.categoryAdditionalPadding,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                  right: MainPagePaddings.sortImageBlockRight,
                  left: index == 0
                      ? MainPagePaddings.sortImageBlockFirstLeft
                      : 0),
              child: CategoryItem(
                data: data[index],
                onPressed: () {},
              ),
            ),
            itemCount: data.length,
          ),
        ),
        const SizedBox(
          height: MainPagePaddings.categoryBottom -
              MainPagePaddings.categoryAdditionalPadding,
        )
      ],
    );
  }
}
