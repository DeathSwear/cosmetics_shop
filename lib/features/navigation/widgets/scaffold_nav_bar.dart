import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/navigation_paddings.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/navigation_sizes.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/route_strings.dart';
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
  void goToPage(MyNavController navigationController, String page) {
    navigationController.goTo(route: page);
  }

  TextStyle getTextStyle(MyNavController navigationController, int index) {
    return index == navigationController.getCurrentIndex()
        ? AppTextStyles.navTextActive
        : AppTextStyles.navTextDisable;
  }

  @override
  Widget build(BuildContext context) {
    final MyNavController navigationController =
        MyNavigationProvider.of(context)!.navController;

    return ValueListenableBuilder<String>(
      valueListenable: navigationController.currentRouteNotifier,
      builder: (context, currentRoute, child) {
        return Scaffold(
          body: navigationController.getCurrentPage(),
          bottomNavigationBar: Container(
            height: NavigationSizes.navBarHeight,
            padding:
                const EdgeInsets.only(top: NavigationPaddings.navBarInsideTop),
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
                  onTap: () => goToPage(navigationController, '/mainScreen'),
                  child: Column(
                    children: [
                      Image.asset(
                        height: NavigationSizes.navBarIconSize,
                        width: NavigationSizes.navBarIconSize,
                        ImageSource.houseBarIcon,
                        fit: BoxFit.cover,
                      ),
                      Text(AppStrings.navBarHouse,
                          style: getTextStyle(navigationController, 0))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => goToPage(navigationController, '/catalogScreen'),
                  child: Column(
                    children: [
                      Image.asset(
                        height: NavigationSizes.navBarIconSize,
                        width: NavigationSizes.navBarIconSize,
                        ImageSource.glassBarIcon,
                        fit: BoxFit.cover,
                      ),
                      Text(AppStrings.navBarGlass,
                          style: getTextStyle(navigationController, 1))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => goToPage(
                      navigationController, Routestrings.shoppingScreen),
                  child: Column(
                    children: [
                      Image.asset(
                        height: NavigationSizes.navBarIconSize,
                        width: NavigationSizes.navBarIconSize,
                        ImageSource.shoppingBarIcon,
                        fit: BoxFit.cover,
                      ),
                      Text(AppStrings.navBarShopping,
                          style: getTextStyle(navigationController, 2))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => goToPage(
                      navigationController, Routestrings.profileScreen),
                  child: Column(
                    children: [
                      Image.asset(
                        height: NavigationSizes.navBarIconSize,
                        width: NavigationSizes.navBarIconSize,
                        ImageSource.userBarIcon,
                        fit: BoxFit.cover,
                      ),
                      Text(AppStrings.navBarProfile,
                          style: getTextStyle(navigationController, 3))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
