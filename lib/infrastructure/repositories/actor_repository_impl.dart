import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repository/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDataSource actorsDataSource;

  ActorRepositoryImpl(this.actorsDataSource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return actorsDataSource.getActorsByMovie(movieId);
  }
}
