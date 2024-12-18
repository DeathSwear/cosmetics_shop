import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
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
              Text(widget.data.text),
              Text(widget.data.title),
              Text(widget.data.items[0]),
              Text('data'),
              Text('data'),
              TextButton(
                  onPressed: () => navigationController.pop(),
                  child: Text('!!!!back!!!!'))
            ],
          ),
        ),
      ),
    );
  }
}
