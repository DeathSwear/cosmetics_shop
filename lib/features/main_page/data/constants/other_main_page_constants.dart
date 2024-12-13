import 'package:cosmetics_shop/features/main_page/data/classes/slider_data.dart';
import 'package:cosmetics_shop/features/main_page/data/classes/sort_image_bloc_data.dart';
import 'package:cosmetics_shop/theme/image_source.dart';

class OtherMainPageConstants {
  static List<SliderData> sliderData = [
    SliderData(
        img: ImageSource.slider1,
        title: 'Скидка -15%',
        type: 'Сыворотка',
        name: 'HA EYE & NECK SERUM'),
    SliderData(
        img: ImageSource.slider2,
        title: 'Скидка -25%',
        type: 'Сыворотка',
        name: 'MOMMY HILFERS'),
    SliderData(
        img: ImageSource.slider3,
        title: 'Скидка -35%',
        type: 'Для лица',
        name: 'GIGA KRASKA'),
  ];
  static const Duration slideAwait = Duration(seconds: 3);
  static const Duration slideTime = Duration(milliseconds: 500);

  static const String opacityButtonText = 'Перейти к акции';

  static List<SortImageBlocData> sortBlocSliderData = [
    SortImageBlocData(img: ImageSource.slider1, text: 'Наборы'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Наборы'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Наборы'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Наборы'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Наборы'),
  ];
}
