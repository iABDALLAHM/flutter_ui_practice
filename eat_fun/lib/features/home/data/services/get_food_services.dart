import 'dart:convert';

import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:flutter/services.dart';

class GetFoodServices {
  Future<List<FoodCategory>> getFood() async {
    try {
      final String jsonString = await rootBundle.loadString(
        'assets/data/Eat_Fun.json',
      );

      final List<dynamic> decodedFile = jsonDecode(jsonString);
      List<FoodCategory> categories = decodedFile
          .map((item) => FoodCategory.fromJson(item))
          .toList();
      return categories;
    } catch (error) {
      throw Exception(error);
    }
  }
}
