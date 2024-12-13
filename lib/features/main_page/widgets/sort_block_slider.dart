import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/other_main_page_constants.dart';
import 'package:cosmetics_shop/features/main_page/widgets/sort_image_block.dart';
import 'package:flutter/material.dart';

class SortBlockSlider extends StatelessWidget {
  const SortBlockSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MainPageSizes.sortImageSize + MainPagePaddings.sortImageBlockBottom,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
              right: MainPagePaddings.sortImageBlockRight,
              left: index == 0 ? MainPagePaddings.sortImageBlockFirstLeft : 0),
          child: SortImageBlock(
            img: OtherMainPageConstants.sortBlocSliderData[index].img,
            text: OtherMainPageConstants.sortBlocSliderData[index].text,
            onPressed: () {},
          ),
        ),
        itemCount: OtherMainPageConstants.sortBlocSliderData.length,
      ),
    );
  }
}
