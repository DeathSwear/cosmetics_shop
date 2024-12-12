import 'package:cosmetics_shop/features/main_page/data/classes/slider_data.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_paddings.dart';
import 'package:cosmetics_shop/features/main_page/data/constants/main_page_sizes.dart';
import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key, required this.data});
  final SliderData data;
  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          height: maxHeight * MainPageSizes.sliderHeightScale,
          width: maxWidth,
          data.img,
          color: AppColors.black25Color,
          colorBlendMode: BlendMode.darken,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: MainPagePaddings.sliderInsideBottom,
          left: MainPagePaddings.sliderInsideLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: AppTextStyles.sliderTitle,
              ),
              Text(
                data.type,
                style: AppTextStyles.sliderSubTitle,
              ),
              Text(
                data.name,
                style: AppTextStyles.sliderSubTitle,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: MainPagePaddings.sliderInsideBottom,
          right: MainPagePaddings.sliderInsideRight,
          child: Container(
            color: Colors.amber,
            height: 36,
            width: 120,
          ),
        )
      ],
    );
  }
}
