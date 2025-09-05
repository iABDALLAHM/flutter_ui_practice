import 'dart:convert';

import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:flutter/services.dart';

class GetFoodServices {
  Future<List<FoodModel>> getFood({required String categoryName}) async {
    final String response = await rootBundle.loadString(
      "assets/data/Eat_Fun.json",
    );
    final List<dynamic> data = jsonDecode(response);
    return data.map((item) => FoodModel.categoryFromJson(item)).toList();
  }

  Future<List<FoodModel>> getCategories() async {
    final String response = await rootBundle.loadString(
      "assets/data/Eat_Fun.json",
    );
    final List<dynamic> data = jsonDecode(response);
    return data.map((item) => FoodModel.categoryFromJson(item)).toList();
  }
}
