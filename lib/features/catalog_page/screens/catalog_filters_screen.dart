import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_other_constants.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/drop_down_sort.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CatalogFiltersScreen extends StatefulWidget {
  const CatalogFiltersScreen({
    super.key,
    required this.sortValues,
  });
  final Map<String, String> sortValues;
  @override
  CatalogFiltersScreenState createState() => CatalogFiltersScreenState();
}

class CatalogFiltersScreenState extends State<CatalogFiltersScreen> {
  Map<String, String> sortValues = {};

  @override
  void initState() {
    super.initState();
    sortValues = widget.sortValues;
  }

  void updateSort(String key, String value) {
    sortValues[key] = value;
  }

  void confirmSort(MyNavController navigationController) {
    navigationController.pop(data: sortValues);
  }

  List<Widget> getSortList() {
    List<Widget> temp = [];
    for (int i = 0;
        i < CatalogPageOtherConstants.dropDownSortDataList.length;
        i++) {
      temp.add(DropDownSort(
          label: CatalogPageOtherConstants.dropDownSortDataList[i].title,
          items: CatalogPageOtherConstants.dropDownSortDataList[i].items,
          initialValue: widget.sortValues[
                  CatalogPageOtherConstants.dropDownSortDataList[i].title] ??
              CatalogPageOtherConstants.dropDownSortDataList[i].items[0],
          onSelected: (value) {
            updateSort(
              CatalogPageOtherConstants.dropDownSortDataList[i].title,
              value,
            );
          }));
      temp.add(SizedBox(
          height: i == 0
              ? CatalogPagePaddings.sortRowBottomFirst
              : CatalogPagePaddings.sortRowBottom));
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
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
                  child: Column(
                    children: [
                      Row(
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
                          const Text(AppStrings.filters,
                              style: AppTextStyles.searchPageTitle),
                          const SizedBox(
                            width: CatalogPageSizes.backIconSize,
                          ),
                        ],
                      ),
                      const SizedBox(
                          height: CatalogPagePaddings.backTitleBottom),
                      ...getSortList(),
                      TextButton(
                        onPressed: () => confirmSort(navigationController),
                        style: TextButton.styleFrom(
                            elevation: 0,
                            alignment: Alignment.center,
                            backgroundColor: AppColors.mattButtonColor,
                            foregroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            padding: EdgeInsets.zero,
                            fixedSize: Size(
                                maxWidth -
                                    CatalogPagePaddings
                                            .applyFiltersButtonHorizontal *
                                        2,
                                CatalogPageSizes.applyFiltersButtonHeight)),
                        child: const Text(
                          AppStrings.applyFilters,
                          style: AppTextStyles.applyFilters,
                        ),
                      ),
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
