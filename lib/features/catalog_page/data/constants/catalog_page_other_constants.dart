import 'package:cosmetics_shop/features/catalog_page/data/classes/search_text_data.dart';

class CatalogPageOtherConstants {
  static List<SearchTextData> searchTextDataExamples = [
    SearchTextData(
        text: 'Назначение', title: 'По назначению', items: assignment),
    SearchTextData(
        text: 'Тип средства', title: 'По типу средства', items: typeOfProduct),
    SearchTextData(text: 'Тип кожи', title: 'По типу кожи', items: skinType),
    SearchTextData(
        text: 'Линия косметики', title: 'Линии', items: cosmeticsLine),
    SearchTextData(text: 'Наборы', title: 'Виды наборов', items: kits),
    SearchTextData(text: 'Акции', title: '', items: []),
    SearchTextData(text: 'Консультация\nс психологом', title: '', items: []),
  ];

  static List<String> assignment = [
    'Назначение1',
    'Назначение2',
    'Назначение3',
    'Назначение4'
  ];
  static List<String> typeOfProduct = [
    'Очищение',
    'Увлажнение',
    'Регенерация',
    'Обезжараживание'
  ];
  static List<String> skinType = [
    'Жирная',
    'Комбинированная',
    'Нормальная',
    'Сухая',
    'Любой тип'
  ];
  static List<String> cosmeticsLine = [
    'Линия1',
    'Линия2',
    'Линия3',
    'Линия4',
    'Линия5'
  ];
  static List<String> kits = ['Супер модный', 'Чутчут модный', 'Котяшный'];
  static List<String> skinProblems = [
    'Проблема1',
    'Проблема2',
    'Проблема3',
    'Проблема4'
  ];
}
