
part of 'movie_model.g.dart';


MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
       poster_path: json['poster_path'] as String,
      vote_average: json['vote_average'] as num,
      title: json['title'] as String,


    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.poster_path,
      'vote_average': instance.vote_average,
      'title': instance.title,

    };
