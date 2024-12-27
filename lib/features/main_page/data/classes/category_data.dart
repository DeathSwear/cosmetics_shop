class CategoryItemData {
  final String img;
  final String price;
  final String type;
  final String name;
  final String? lastPrice;
  CategoryItemData(
      {required this.img,
      required this.price,
      required this.name,
      required this.type,
      this.lastPrice});
}
