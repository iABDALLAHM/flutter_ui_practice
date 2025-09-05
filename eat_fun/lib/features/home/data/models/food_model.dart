class FoodModel {
  final String categoryName;
  final String foodName;
  final int foodPrice;
  final String foodImage;
  FoodModel({
    required this.categoryName,
    required this.foodImage,
    required this.foodName,
    required this.foodPrice,
  });
  factory FoodModel.fromJson(jsonData) {
    return FoodModel(
      categoryName: jsonData[""],
      foodImage: jsonData[""],
      foodName: jsonData[""],
      foodPrice: jsonData[""],
    );
  }
}
