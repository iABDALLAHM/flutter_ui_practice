class FoodModel {
  final String categoryName;
  final String? foodName;
  final int? foodPrice;
  final String? foodImage;
  FoodModel({
    required this.categoryName,
    this.foodImage,
    this.foodName,
    this.foodPrice,
  });
  factory FoodModel.fromJson(jsonData) {
    return FoodModel(
      categoryName: jsonData["category_name"],
      foodImage: jsonData["food_image"],
      foodName: jsonData["food_name"],
      foodPrice: jsonData["food_price"],
    );
  }
  factory FoodModel.categoryFromJson(jsonData) {
    return FoodModel(categoryName: jsonData["category_name"]);
  }
}
