import 'dart:async';

import 'package:cosmetics_shop/features/main_page/data/classes/slider_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/other_main_page_constants.dart';
import 'package:cosmetics_shop/features/main_page/widgets/border_button.dart';
import 'package:cosmetics_shop/features/main_page/widgets/category.dart';
import 'package:cosmetics_shop/features/main_page/widgets/home_care_section.dart';
import 'package:cosmetics_shop/features/main_page/widgets/slide_placeholder.dart';
import 'package:cosmetics_shop/features/main_page/widgets/sort_block_slider.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final List<SliderData> sliderData = OtherMainPageConstants.sliderData;
  late List<Widget> _pages;
  int _activePage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(OtherMainPageConstants.slideAwait, (timer) {
      if (_pageController.page == sliderData.length - 1) {
        _pageController.animateToPage(0,
            duration: OtherMainPageConstants.slideTime,
            curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: OtherMainPageConstants.slideTime,
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  void initState() {
    super.initState();
    _pages = List.generate(
        sliderData.length,
        (index) => SlidePlaceholder(
              data: sliderData[index],
            ));
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;

    return Container(
      color: AppColors.backgroundColor,
      child: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                  height: maxHeight * MainPageSizes.sliderHeightScale,
                  child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemCount: sliderData.length,
                      itemBuilder: (context, index) {
                        return _pages[index];
                      })),
              Positioned(
                left: MainPagePaddings.slideIndicatorLeft,
                top: MainPagePaddings.top,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: List<Widget>.generate(
                      _pages.length,
                      (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:
                                  MainPagePaddings.sliderIndicatorHorizontal),
                          child: CircleAvatar(
                            radius: MainPageSizes.sliderIndicatorRadius,
                            backgroundColor: _activePage == index
                                ? AppColors.whiteColor
                                : AppColors.white05Color,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: MainPagePaddings.sliderBottom),
          const SortBlockSlider(),
          Category(
              tag: OtherMainPageConstants.categoryNewTitle,
              data: OtherMainPageConstants.cateroryNewItems,
              gradient: AppColors.greenGradient),
          HomeCareSection(
            text: OtherMainPageConstants.beautiText,
            title: OtherMainPageConstants.beautiTitle,
            data: OtherMainPageConstants.beautiSliderData,
          ),
          const SizedBox(height: MainPagePaddings.beautiBottom),
          Category(
              tag: OtherMainPageConstants.categoryShareTitle,
              data: OtherMainPageConstants.cateroryShareItems,
              gradient: AppColors.purpleGradient),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: MainPagePaddings.borderButtonSectionHorizontal),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderButton(
                        text: OtherMainPageConstants.borderButtonCleansing,
                        onPressed: () {}),
                    BorderButton(
                        text: OtherMainPageConstants.borderButtonMoisturizing,
                        onPressed: () {}),
                  ],
                ),
                const SizedBox(
                  height: MainPagePaddings.borderButtonBottom,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderButton(
                        text: OtherMainPageConstants.borderButtonNourishment,
                        onPressed: () {}),
                    BorderButton(
                        text: OtherMainPageConstants.borderButtonRejuvenation,
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: MainPagePaddings.beautiBottom,
          ),
          Category(
              tag: OtherMainPageConstants.categoryHitsTitle,
              data: OtherMainPageConstants.cateroryHitsItems,
              gradient: AppColors.orangeGradient),
        ],
      ),
    );
  }
}
