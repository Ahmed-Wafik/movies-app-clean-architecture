import 'package:app_example/core/errors/failure.dart';
import 'package:app_example/domain/entitites.dart/movie_entity.dart';
import 'package:app_example/domain/repositories/movie_repository.dart';
import 'package:app_example/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

class GetUpcomingMoviesUsecase implements UseCase <MovieEntity, NoParams> {
  final IMovieRepository repository;

  GetUpcomingMoviesUsecase(this.repository);

  @override
  Future<Either<Failure, MovieEntity>> call(NoParams noParams) async {
    return await repository.getUpcomingMovies();
  }
}