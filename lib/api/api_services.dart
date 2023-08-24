import 'movie_model.g.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<MovieModel>> fetchPopularMovies() async {
  final url = 'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1';
  final headers = {
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3YzQzM2YzMDgwMDIyZGY0OWFkYmIyMmM0ODAxMjgyZCIsInN1YiI6IjY0ZTEzZDM3MjQ5NWFiMDBlMzdjMzY1MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Qbos7HC0sGzZU-jvRb0gH93m240Cg6R4zruKrvtyXJk',
    'accept': 'application/json'
  };

  final response = await http.get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final List<MovieModel> movies = (jsonData['results'] as List)
        .map((data) => MovieModel.fromJson(data))
        .toList();
    return movies;
  } else {
    throw Exception('Failed to fetch popular movies');
  }
}
