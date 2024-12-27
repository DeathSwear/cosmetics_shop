import 'package:cosmetics_shop/features/main_page/data/classes/category_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView(
      {super.key, required this.data, required this.rightPadding});
  final List<CategoryItemData> data;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MainPageSizes.categoryHeight +
          MainPagePaddings.categoryAdditionalPadding,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
              right: rightPadding,
              left: index == 0 ? MainPagePaddings.sortImageBlockFirstLeft : 0),
          child: CategoryItem(
            data: data[index],
            onPressed: () {},
          ),
        ),
        itemCount: data.length,
      ),
    );
  }
}
