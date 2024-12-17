import 'package:cosmetics_shop/features/catalog_page/screens/catalog_select_screen.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  const SearchText(
      {super.key,
      required this.text,
      required this.title,
      required this.items,
      required this.onTap});
  final String text;
  final String title;
  final List<String> items;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, //() {
      //Navigator.push(context,
      //   MaterialPageRoute(builder: (context) => CatalogSelectScreen()));
      //Navigator.push(context, MaterialPageRoute(builder: (context) => MyPage(someData: data)));
      //},
      child: Text(
        text,
        style: AppTextStyles.searchPageText,
      ),
    );
  }
}
