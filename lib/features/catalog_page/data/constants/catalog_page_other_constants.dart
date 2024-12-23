import 'package:cosmetics_shop/features/catalog_page/data/classes/drop_down_sort_data.dart';
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
  static List<String> typeOfProduct = ['Тип1', 'Тип2', 'Тип3', 'Тип4'];
  static List<String> effectOfProduct = [
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
  static const String sortedScreenTitle = 'Средства \nдля жирной кожи';
  static const _unselected = 'Не выбрано';
  static const _all = 'Все';
  static List<DropDownSortData> dropDownSortDataList = [
    DropDownSortData(title: 'Сортировка', items: [
      'По популярности',
      'По оценкам',
      'По цене',
    ]),
    DropDownSortData(
        title: searchTextDataExamples[2].text,
        items: [_unselected, ...searchTextDataExamples[2].items, _all]),
    DropDownSortData(
        title: searchTextDataExamples[1].text,
        items: [_unselected, ...searchTextDataExamples[1].items, _all]),
    DropDownSortData(
        title: 'Проблема кожи',
        items: [_unselected, 'Проблема1', 'Проблема2', 'Проблема3', _all]),
    DropDownSortData(
        title: 'Эффект средства',
        items: [_unselected, ...effectOfProduct, _all]),
    DropDownSortData(
        title: searchTextDataExamples[3].text,
        items: [_unselected, ...searchTextDataExamples[3].items, _all]),
  ];

  static Map<String, String> getBasicSortOptions() {
    Map<String, String> temp = {};
    for (int i = 0; i < dropDownSortDataList.length; i++) {
      temp[dropDownSortDataList[i].title] = dropDownSortDataList[i].items[0];
    }
    return temp;
  }
}
