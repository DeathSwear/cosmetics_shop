import 'package:cosmetics_shop/features/catalog_page/screens/catalog_screen.dart';
import 'package:cosmetics_shop/features/main_page/screens/main_screen.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/navigation_paddings.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/navigation_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class ScaffoldNavBar extends StatefulWidget {
  const ScaffoldNavBar({super.key});

  @override
  State<ScaffoldNavBar> createState() => _ScaffoldNavBarState();
}

class _ScaffoldNavBarState extends State<ScaffoldNavBar> {
  int _currentIndex = 0;

  final List<Widget> body = [
    const MainScreen(),
    const CatalogScreen(),
    const Text('c'),
    const Text('d'),
  ];

  void pushAtIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  TextStyle getTextStyle(int index) {
    return index == _currentIndex
        ? AppTextStyles.navTextActive
        : AppTextStyles.navTextDisable;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: Container(
        height: NavigationSizes.navBarHeight,
        padding: const EdgeInsets.only(top: NavigationPaddings.navBarInsideTop),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                  color: AppColors.disableGray.withOpacity(0.2),
                  width: NavigationSizes.borderTopWidth),
            )),
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          destinations: [
            GestureDetector(
              onTap: () => pushAtIndex(0),
              child: Column(
                children: [
                  Image.asset(
                    height: NavigationSizes.navBarIconSize,
                    width: NavigationSizes.navBarIconSize,
                    ImageSource.houseBarIcon,
                    fit: BoxFit.cover,
                  ),
                  Text(AppStrings.navBarHouse, style: getTextStyle(0))
                ],
              ),
            ),
            GestureDetector(
              onTap: () => pushAtIndex(1),
              child: Column(
                children: [
                  Image.asset(
                    height: NavigationSizes.navBarIconSize,
                    width: NavigationSizes.navBarIconSize,
                    ImageSource.glassBarIcon,
                    fit: BoxFit.cover,
                  ),
                  Text(AppStrings.navBarGlass, style: getTextStyle(1))
                ],
              ),
            ),
            GestureDetector(
              onTap: () => pushAtIndex(2),
              child: Column(
                children: [
                  Image.asset(
                    height: NavigationSizes.navBarIconSize,
                    width: NavigationSizes.navBarIconSize,
                    ImageSource.shoppingBarIcon,
                    fit: BoxFit.cover,
                  ),
                  Text(AppStrings.navBarShopping, style: getTextStyle(2))
                ],
              ),
            ),
            GestureDetector(
              onTap: () => pushAtIndex(3),
              child: Column(
                children: [
                  Image.asset(
                    height: NavigationSizes.navBarIconSize,
                    width: NavigationSizes.navBarIconSize,
                    ImageSource.userBarIcon,
                    fit: BoxFit.cover,
                  ),
                  Text(AppStrings.navBarProfile, style: getTextStyle(3))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
