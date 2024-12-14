import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/custom_search_bar.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});
  @override
  CatalogScreenState createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: CatalogPagePaddings.basicHorizontal),
              child: CustomSearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
