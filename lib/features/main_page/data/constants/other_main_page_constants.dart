import 'package:cosmetics_shop/features/main_page/data/classes/category_data.dart';
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
    SortImageBlocData(img: ImageSource.slider1, text: 'Для лица'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Для глаз'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Для тела'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Умывашки'),
    SortImageBlocData(img: ImageSource.slider1, text: 'Для ногтей'),
  ];

  static const String categoryNewTitle = 'Новинки';
  static List<CategoryItemData> cateroryNewItems = [
    CategoryItemData(
        img: ImageSource.new1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.new2,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.new2,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.new1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.new1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
  ];

  static List<SortImageBlocData> beautiSliderData = [
    SortImageBlocData(img: ImageSource.beauti1, text: 'Демакияж'),
    SortImageBlocData(img: ImageSource.beauti2, text: 'Очищение'),
    SortImageBlocData(img: ImageSource.beauti3, text: 'Сыворотка'),
    SortImageBlocData(img: ImageSource.beauti4, text: 'Дневной крем'),
    SortImageBlocData(img: ImageSource.beauti1, text: 'Демакияж2'),
    SortImageBlocData(img: ImageSource.beauti2, text: 'Очищение2'),
  ];

  static const String categoryShareTitle = 'Акции';
  static List<CategoryItemData> cateroryShareItems = [
    CategoryItemData(
        img: ImageSource.share1,
        price: '10 195 P',
        lastPrice: '12 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.share2,
        price: '10 195 P',
        lastPrice: '12 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.share1,
        price: '10 195 P',
        lastPrice: '12 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.share2,
        price: '10 195 P',
        lastPrice: '12 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.share1,
        price: '10 195 P',
        lastPrice: '12 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
  ];

  static const String categoryHitsTitle = 'Хиты';
  static List<CategoryItemData> cateroryHitsItems = [
    CategoryItemData(
        img: ImageSource.hits1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.hits2,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.hits1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.hits2,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
    CategoryItemData(
        img: ImageSource.hits1,
        price: '10 195 P',
        name: 'Unstress Total Serenity Serum',
        type: 'Сыворотка'),
  ];

  static const String borderButtonCleansing = 'Очищение';
  static const String borderButtonMoisturizing = 'Увлажнение';
  static const String borderButtonNourishment = 'Питание';
  static const String borderButtonRejuvenation = 'Омоложение';
}
