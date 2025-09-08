class FoodItem {
  final String? foodName;
  final int? foodPrice;
  final String? foodImage;
  FoodItem({this.foodImage, this.foodName, this.foodPrice});
  factory FoodItem.fromJson(jsonData) {
    return FoodItem(
      foodImage: jsonData["food_image"],
      foodName: jsonData["food_name"],
      foodPrice: jsonData["food_price"],
    );
  }
}

class FoodCategory {
  final String categoryName;
  final String categoryIcon;
  final List<FoodItem> items;

  FoodCategory({
    required this.categoryIcon,
    required this.categoryName,
    required this.items,
  });

  factory FoodCategory.fromJson(jsonData) {
    var list = jsonData["items"] as List<dynamic>;
    List<FoodItem> itemsList = list
        .map((item) => FoodItem.fromJson(item))
        .toList();
    return FoodCategory(
      categoryIcon: jsonData["category_image"],
      categoryName: jsonData["category_name"],
      items: itemsList,
    );
  }
}
