class Movie {
  final String title;
  final String keyword;
  final String poster;
  final String appearance;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map["title"],
        keyword = map["keyword"],
        poster = map["poster"],
        appearance = map["appearance"],
        like = map["like"];

  @override
  String toString() => "Movie<$title:$keyword>";
}
