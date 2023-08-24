import 'package:json_annotation/json_annotation.dart';
part 'movie_model.g.g.dart';
@JsonSerializable()
class MovieModel {
  final int id;
  final String poster_path;
  final num vote_average;
  final String title;
  MovieModel({
    required this.id,
    required this.poster_path,
    required this.vote_average,
    required this.title,
  });
  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);


}