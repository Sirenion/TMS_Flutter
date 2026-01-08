class ItemModel {
  final String name;
  final String desc;
  final String imageUrl;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool sale;
  final double salePrice;

  ItemModel({
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.rating,
    required this.price,
    this.isFavourite = false,
    this.sale = false,
    this.salePrice = 0});
}