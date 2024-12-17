import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_paddings.dart';
import 'package:cosmetics_shop/features/catalog_page/data/constants/catalog_page_sizes.dart';
import 'package:cosmetics_shop/features/catalog_page/widgets/custom_search_bar.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class CatalogSelectScreen extends StatefulWidget {
  const CatalogSelectScreen({super.key});
  @override
  CatalogSelectScreenState createState() => CatalogSelectScreenState();
}

class CatalogSelectScreenState extends State<CatalogSelectScreen> {
  void popPage(MyNavController navigationController) {
    //setState(() {
    navigationController.pop();
    //});
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
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              TextButton(
                  onPressed: () => popPage(navigationController),
                  child: Text('!!!!back!!!!'))
            ],
          ),
        ),
      ),
    );
  }
}
