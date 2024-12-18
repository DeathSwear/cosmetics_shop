import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_select_screen.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  const SearchText({
    super.key,
    required this.data,
    required this.onPressed,
  });
  final SearchTextData data;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final MyNavController navigationController =
        MyNavigationProvider.of(context)!.navController;
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        data.text,
        style: AppTextStyles.searchPageText,
      ),
    );
  }
}
