import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';

class GetFilmService {
  Future<List<FilmModel>> getFilms({required String category}) async {
    try {
      final String jsonString = await rootBundle.loadString(
        "assets/data/films.json",
      );
      final Map<String, dynamic> items = jsonDecode(jsonString);
      if (category == "nowShowing") {
        final List<dynamic> nowShowing = items["nowShowing"];
        final List<FilmModel> nowShowingList = nowShowing
            .map((ele) => FilmModel.fromJson(ele))
            .toList();
        return nowShowingList;
      } else {
        final List<dynamic> popular = items["popular"];
        final List<FilmModel> popularList = popular
            .map((ele) => FilmModel.fromJson(ele))
            .toList();
        return popularList;
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
