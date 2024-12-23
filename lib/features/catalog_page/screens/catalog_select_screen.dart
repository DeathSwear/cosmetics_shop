import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_sorted_assortment_screen.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/route_strings.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CatalogSelectScreen extends StatefulWidget {
  const CatalogSelectScreen({
    super.key,
    required this.data,
  });
  final SearchTextData data;
  @override
  CatalogSelectScreenState createState() => CatalogSelectScreenState();
}

class CatalogSelectScreenState extends State<CatalogSelectScreen> {
  void pushToSortedAssortmentScreen(
      MyNavController navigationController, String data) {
    navigationController.push(
        route: RouteStrings.catalogAssortmentScreen,
        page: CatalogSortedAssortmentScreen(
          someData: data,
          key: GlobalKey(),
        ));
  }

  List<Widget> getTextList(MyNavController navigationController) {
    List<Widget> temp = [];
    for (int i = 0; i < widget.data.items.length; i++) {
      temp.add(GestureDetector(
        onTap: () {
          pushToSortedAssortmentScreen(
              navigationController, 'some information');
        },
        child: Text(
          widget.data.items[i],
          style: AppTextStyles.searchPageTypeText,
        ),
      ));
      temp.add(const SizedBox(height: CatalogPagePaddings.searchTextBottom));
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    final MyNavController navigationController =
        MyNavigationProvider.of(context)!.navController;

    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: CatalogPagePaddings.basicTop),
          child: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: CatalogPagePaddings.basicHorizontal),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => navigationController.pop(),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: CatalogPageSizes.backIconSize,
                        ),
                      ),
                      Text(widget.data.title,
                          style: AppTextStyles.searchPageTitle),
                      const SizedBox(
                        width: CatalogPageSizes.backIconSize,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: CatalogPagePaddings.basicHorizontal,
                    top: CatalogPagePaddings.backTitleBottom,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...getTextList(navigationController),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
