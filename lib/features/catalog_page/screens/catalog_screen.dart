import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_other_constants.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_select_screen.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/custom_search_bar.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/ideal_home_care_section.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/search_text.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});
  @override
  CatalogScreenState createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  void pushToSelectScreen(
      MyNavController navigationController, SearchTextData data) {
    navigationController.push(
        route: '/catalogScreen/select',
        page: CatalogSelectScreen(
          data: data,
        ));
  }

  List<Widget> getSearchTextList(MyNavController navigationController) {
    List<Widget> temp = [];
    for (int i = 0; i < 5; i++) {
      temp.add(SearchText(
          data: CatalogPageOtherConstants.searchTextDataExamples[i],
          onPressed: () => pushToSelectScreen(navigationController,
              CatalogPageOtherConstants.searchTextDataExamples[i])));
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: CatalogPagePaddings.basicTop),
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: CatalogPagePaddings.basicHorizontal),
                  child: CustomSearchBar(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: CatalogPagePaddings.basicHorizontal,
                      top: CatalogPagePaddings.searchTextBlockTop,
                      bottom: CatalogPagePaddings.searchTextBlockBottom),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...getSearchTextList(navigationController),
                      SearchText(
                        data:
                            CatalogPageOtherConstants.searchTextDataExamples[5],
                        additionalIcon: Image.asset(
                          ImageSource.sharePink,
                          fit: BoxFit.cover,
                          height: CatalogPageSizes.shareImageSize,
                          width: CatalogPageSizes.shareImageSize,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                          height: CatalogPagePaddings.searchTextBottom),
                      SearchText(
                        data:
                            CatalogPageOtherConstants.searchTextDataExamples[6],
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                IdealHomeCareSection(
                  title: AppStrings.beautiSectionTitle2,
                  text: AppStrings.beautiSectionText2,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
