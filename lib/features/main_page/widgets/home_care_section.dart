import 'package:cosmetics_shop/features/main_page/data/classes/sort_image_bloc_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/features/main_page/widgets/home_care_type_item.dart';
import 'package:cosmetics_shop/features/main_page/widgets/matt_button.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:cosmetics_shop/theme/image_source.dart';
import 'package:flutter/material.dart';

class HomeCareSection extends StatelessWidget {
  const HomeCareSection(
      {super.key, required this.title, required this.data, required this.text});
  final String title;
  final List<SortImageBlocData> data;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageSource.homeCareBack),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: MainPagePaddings.beautiLeft,
                  top: MainPagePaddings.beautiInsideTop),
              child: Text(
                title,
                style: AppTextStyles.beautiTitle,
              ),
            ),
            const SizedBox(
              height: MainPagePaddings.beautiTitleBottom,
            ),
            SizedBox(
              height: MainPageSizes.typeBlockHeight +
                  MainPagePaddings.beautiTitleBottom,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                      right: MainPagePaddings.sortImageBlockRight,
                      left: index == 0
                          ? MainPagePaddings.sortImageBlockFirstLeft
                          : 0),
                  child: HomeCareTypeItem(
                    img: data[index].img,
                    text: data[index].text,
                    onPressed: () {},
                  ),
                ),
                itemCount: data.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: MainPagePaddings.beautiLeft,
                  right: MainPagePaddings.beautiRight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: AppTextStyles.beautiText,
                  ),
                  MattButton(
                    text: AppStrings.startTest,
                    onPressed: () {},
                    width: MainPageSizes.beautiMattButtonWidth,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: MainPagePaddings.beautiInsideBottom,
            )
          ],
        ));
  }
}
