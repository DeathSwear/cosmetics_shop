import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_other_constants.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_filters_screen.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/custom_chip.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/other_main_page_constants.dart';
import 'package:cosmetics_shop/features/main_page/widgets/category_list_view.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/route_strings.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class CatalogSortedAssortmentScreen extends StatefulWidget {
  const CatalogSortedAssortmentScreen({
    super.key,
    required this.someData,
  });
  final String someData;
  @override
  CatalogSortedAssortmentScreenState createState() =>
      CatalogSortedAssortmentScreenState();
}

class CatalogSortedAssortmentScreenState
    extends State<CatalogSortedAssortmentScreen> {
  int allItemsCount = OtherMainPageConstants.cateroryNewItems.length * 3;
  int currentIndex = 1;

  void pushToFiltersScreen(MyNavController navigationController) {
    navigationController.push(
        route: RouteStrings.catalogFiltersScreen,
        page: CatalogFiltersScreen(
          sortValues: sortValues,
        ));
  }

  Map<String, String> sortValues =
      CatalogPageOtherConstants.getBasicSortOptions();

  bool stillNeedGetData = false;
  void changeSortValues(MyNavController navigationController) {
    if (stillNeedGetData) return;
    Map<String, String>? receivedData = navigationController
        .readControllerDataFrom(RouteStrings.catalogFiltersScreen);
    if (receivedData != null) {
      sortValues = receivedData;
    }
    stillNeedGetData = true;
  }

  @override
  Widget build(BuildContext context) {
    final MyNavController navigationController =
        MyNavigationProvider.of(context)!.navController;
    changeSortValues(navigationController);
    return Container(
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: CatalogPagePaddings.basicTop),
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: CatalogPagePaddings.basicHorizontal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => navigationController.pop(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: CatalogPageSizes.backIconSize,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: CatalogPagePaddings.sortedScreenTitleTop,
                          bottom: CatalogPagePaddings.sortedScreenTitleBottom),
                      child: Text(
                        CatalogPageOtherConstants.sortedScreenTitle,
                        style: AppTextStyles.sortedScreenTitle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '$allItemsCount ${AppStrings.xProducts}',
                          style: AppTextStyles.sortedScreenProductsCount,
                        ),
                        GestureDetector(
                          onTap: () =>
                              pushToFiltersScreen(navigationController),
                          child: Image.asset(
                            ImageSource.optionsHorizontal,
                            fit: BoxFit.cover,
                            height: CatalogPageSizes.shareImageSize,
                            width: CatalogPageSizes.shareImageSize,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: CatalogPagePaddings.chipsSectionBottom,
                    top: CatalogPagePaddings.chipsSectionTop),
                child: SizedBox(
                  height: CatalogPagePaddings.chipHeight,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                            right: CatalogPagePaddings.basicHorizontal,
                            left: index == 0
                                ? CatalogPagePaddings.basicHorizontal
                                : 0),
                        child: CustomChip(
                            text: CatalogPageOtherConstants
                                .effectOfProduct[index],
                            isCurrent: currentIndex == index ? true : false,
                            onPressed: () {
                              setState(() {
                                currentIndex = index;
                              });
                            })),
                    itemCount: CatalogPageOtherConstants.typeOfProduct.length,
                  ),
                ),
              ),
              CategoryListView(
                rightPadding: CatalogPagePaddings.catalogItemRight,
                data: OtherMainPageConstants.cateroryNewItems,
              ),
              CategoryListView(
                rightPadding: CatalogPagePaddings.catalogItemRight,
                data: OtherMainPageConstants.cateroryNewItems,
              ),
              CategoryListView(
                rightPadding: CatalogPagePaddings.catalogItemRight,
                data: OtherMainPageConstants.cateroryNewItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
