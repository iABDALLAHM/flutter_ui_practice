class FilmModel {
  final int filmId;
  final String filmName;
  final String posterUrl;
  final double rating;
  final List<String> genre;
  final int length;
  final String language;
  final String description;
  FilmModel({
    required this.filmId,
    required this.filmName,
    required this.posterUrl,
    required this.rating,
    required this.genre,
    required this.length,
    required this.language,
    required this.description,
  });
  factory FilmModel.fromJson(json) {
    return FilmModel(
      filmId: json["id"],
      filmName: json["title"],
      posterUrl: json["posterUrl"],
      rating: json["rating"],
      genre: List<String>.from(json["genre"]),
      length: json["length"],
      language: json["language"],
      description: json["description"],
    );
  }
}
