import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_arch/core/errors/exception.dart';
import 'package:number_trivia_clean_arch/core/errors/failure.dart';
import 'package:number_trivia_clean_arch/core/network/network_info.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';

typedef _ConcreteOrRandomChooser = Future<NumberTriviaModel> Function();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTriviaModel>> getConcreteNumberTrivia(
    int number,
  ) async {
    return await _getTrivia(() {
      return remoteDataSource.getConcreteNumberTrivia(number);
    });
  }

  @override
  Future<Either<Failure, NumberTriviaModel>> getRandomNumberTrivia() async {
    return await _getTrivia(() {
      return remoteDataSource.getRandomNumberTrivia();
    });
  }

  Future<Either<Failure, NumberTriviaModel>> _getTrivia(
    _ConcreteOrRandomChooser getConcreteOrRandom,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await getConcreteOrRandom();
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
