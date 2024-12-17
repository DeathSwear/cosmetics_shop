import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/custom_search_bar.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/search_text.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
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
  void pushPage(MyNavController navigationController, String page) {
    navigationController.push(route: page);
    //setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final MyNavController navigationController =
        MyNavigationProvider.of(context)!.navController;

    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
        child: SafeArea(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: CatalogPagePaddings.basicHorizontal),
                child: CustomSearchBar(),
              ),
              SearchText(
                text: 'Назначение',
                title: 'По назначению',
                items: [],
                onTap: () =>
                    pushPage(navigationController, '/catalogScreen/select'),
              )
            ],
          ),
        ),
      ),
    );
  }
}