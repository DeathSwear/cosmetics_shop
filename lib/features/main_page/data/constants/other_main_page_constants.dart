import 'package:cosmetics_shop/features/main_page/data/classes/slider_data.dart';
import 'package:cosmetics_shop/theme/image_source.dart';

class OtherMainPageConstants {
  static List<SliderData> sliderData = [
    SliderData(
        img: ImageSource.slider1,
        title: 'Скидка -15%',
        name: 'Сыворотка',
        type: 'HA EYE & NECK SERUM'),
    SliderData(
        img: ImageSource.slider2,
        title: 'Скидка -25%',
        name: 'Сыворотка',
        type: 'MOMMY HILFERS'),
    SliderData(
        img: ImageSource.slider3,
        title: 'Скидка -35%',
        name: 'Для лица',
        type: 'GIGA KRASKA'),
  ];
  static const Duration slideAwait = Duration(seconds: 3);
  static const Duration slideTime = Duration(milliseconds: 500);
}
